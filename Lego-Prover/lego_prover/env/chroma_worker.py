import argparse
import json
from typing import Any

import lego_prover.utils as U

from langchain_openai import AzureOpenAIEmbeddings
from langchain_community.vectorstores import Chroma
from azure_key import AZURE_API_KEY, AZURE_API_VERSION, AZURE_ENDPOINT


import traceback


class ChromaWorker:
    def __init__(self, ckpt_dir, resume=False) -> None:
        # copy the initial skill
        if not resume:
            print(f"Initializing skills")
            U.f_copytree(
                "../../data/initialize_skills/skill",
                f"../../{ckpt_dir}/skill",
                exist_ok=True,
            )

        # Only retrieve the key
        # api_key = random.choice(GPT_ADA_POOL)[0]
        api_key = AZURE_API_KEY
        azure_params = {
            "azure_endpoint": AZURE_ENDPOINT,
            "openai_api_type": "azure",
            "api_version": AZURE_API_VERSION,
        }

        self.skilldb = Chroma(
            collection_name="skill_vectordb",
            embedding_function=AzureOpenAIEmbeddings(
                api_key=api_key, model="text-embedding-ada-002", **azure_params
            ),
            persist_directory=f"../../{ckpt_dir}/skill/vectordb",
        )
        self.codedb = Chroma(
            collection_name="code_vectordb",
            embedding_function=AzureOpenAIEmbeddings(
                api_key=api_key, model="text-embedding-ada-002", **azure_params
            ),
            persist_directory=f"../../{ckpt_dir}/skill/code_vectordb",
        )
        self.validproblemdb = Chroma(
            collection_name="valid_problem_vectordb",
            embedding_function=AzureOpenAIEmbeddings(
                api_key=api_key, model="text-embedding-ada-002", **azure_params
            ),
            persist_directory=f"../../{ckpt_dir}/skill/valid_problem_vectordb",
        )
        self.testproblemdb = Chroma(
            collection_name="test_problem_vectordb",
            embedding_function=AzureOpenAIEmbeddings(
                api_key=api_key, model="text-embedding-ada-002", **azure_params
            ),
            persist_directory=f"../../{ckpt_dir}/skill/test_problem_vectordb",
        )
        self.requestdb = Chroma(
            collection_name="request_vectordb",
            embedding_function=AzureOpenAIEmbeddings(
                api_key=api_key, model="text-embedding-ada-002", **azure_params
            ),
            persist_directory=f"../../{ckpt_dir}/skill/request_vectordb",
        )

    def add_texts(self, database: Chroma, texts, ids, metadatas):
        n_retry_cnt = 50
        while n_retry_cnt > 0:
            try:
                database.add_texts(
                    texts=texts,
                    ids=ids,
                    metadatas=metadatas,
                )
                break
            except Exception as e:
                print(f"add text error: {e}")
                traceback.print_exc()
                n_retry_cnt -= 1

    def similarity_search_with_score(self, database: Chroma, data, k):
        n_retry_cnt = 50
        while n_retry_cnt > 0:
            try:
                return database.similarity_search_with_score(
                    query=data,
                    k=k,
                )
            except Exception as e:
                print(f"similarity_search_with_score error: {e}")
                n_retry_cnt -= 1

    def code_add_text(self, data):
        self.add_texts(
            self.codedb,
            texts=[data["add_text"]],
            ids=[data["problem_name"]],
            metadatas=[{"name": data["problem_name"]}],
        )
        self.codedb.persist()
        return None, self.codedb._collection.count()

    def skill_add_text(self, data):
        self.add_texts(
            self.skilldb,
            texts=[data["add_text"]],
            ids=[data["skill_name"]],
            metadatas=[{"name": data["skill_name"]}],
        )
        self.skilldb.persist()
        return None, self.skilldb._collection.count()

    def valid_problem_add_text(self, data):
        self.add_texts(
            self.validproblemdb,
            texts=[data["add_text"]],
            ids=[data["problem_name"]],
            metadatas=[{"name": data["problem_name"]}],
        )
        self.validproblemdb.persist()
        return None, self.validproblemdb._collection.count()

    def test_problem_add_text(self, data):
        self.add_texts(
            self.testproblemdb,
            texts=[data["add_text"]],
            ids=[data["problem_name"]],
            metadatas=[{"name": data["problem_name"]}],
        )
        self.testproblemdb.persist()
        return None, self.testproblemdb._collection.count()

    def request_add_text(self, data):
        self.add_texts(
            self.requestdb,
            texts=[data["add_text"]],
            ids=[data["request_name"]],
            metadatas=[{"name": data["request_name"]}],
        )
        self.requestdb.persist()
        return None, self.requestdb._collection.count()

    def code_query(self, data):
        docs_and_scores = self.similarity_search_with_score(
            self.codedb, data["query"], k=data["k"]
        )
        result = [doc.metadata["name"] for doc, _ in docs_and_scores]
        return None, result

    def skill_query(self, data):
        docs_and_scores = self.similarity_search_with_score(
            self.skilldb, data["query"], k=data["k"]
        )
        result = [doc.metadata["name"] for doc, _ in docs_and_scores]
        return None, result

    def valid_problem_query(self, data):
        docs_and_scores = self.similarity_search_with_score(
            self.validproblemdb, data["query"], k=data["k"]
        )
        result = [doc.metadata["name"] for doc, _ in docs_and_scores]
        return None, result

    def test_problem_query(self, data):
        docs_and_scores = self.similarity_search_with_score(
            self.testproblemdb, data["query"], k=data["k"]
        )
        result = [doc.metadata["name"] for doc, _ in docs_and_scores]
        return None, result

    def request_query(self, data):
        docs_and_scores = self.similarity_search_with_score(
            self.requestdb, data["query"], k=data["k"]
        )
        result = [doc.metadata["name"] for doc, _ in docs_and_scores]
        return None, result


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--resume", type=str, required=True)
    parser.add_argument("--ckpt_path", type=str, required=True)
    args = parser.parse_args()

    resume = False
    if args.resume == "True":
        resume = True

    chroma_worker = ChromaWorker(args.ckpt_path, resume)
    print("Chroma worker is ready.")

    while True:
        input_data = input()
        input_data = json.loads(input_data)
        action, data = input_data
        print(action)

        # Note: if you're getting something like the below, then your
        # terminal is probably using latin-1 instead of utf-8 encoding.
        # Input: ["debug/valid_tiny_problem_query", {"query": "lemma a_times_vera:\n  fixes a :: real\n  assumes \"a \u2260 0\"\n  shows \" a * (1 / a) = 1\"\n  by (simp add: assms)", "k": 20}]
        # UnicodeEncodeError: 'latin-1' codec can't encode character '\u2260' in position 64: ordinal not in range(256)
        print(data)

        if action == "code_add_text":
            error, output = chroma_worker.code_add_text(data)
        elif action == "skill_add_text":
            error, output = chroma_worker.skill_add_text(data)
        elif action == "code_query":
            error, output = chroma_worker.code_query(data)
        elif action == "skill_query":
            error, output = chroma_worker.skill_query(data)
        elif action == "problem_add_text":
            if "valid" in data["problem_name"]:
                error, output = chroma_worker.valid_problem_add_text(data)
            else:
                error, output = chroma_worker.test_problem_add_text(data)
        elif action == "request_add_text":
            error, output = chroma_worker.request_add_text(data)
        elif action in (
            f"{prefix}_problem_query"
            for prefix in (
                "valid",
                "debug/valid",
                "debug/valid_tiny",
                "eval/valid_rand",
            )
        ):
            error, output = chroma_worker.valid_problem_query(data)
        elif action in (f"{prefix}_problem_query" for prefix in ("test", "debug/test")):
            error, output = chroma_worker.test_problem_query(data)
        elif action == "request_query":
            error, output = chroma_worker.request_query(data)
        else:
            error = "Action error"
            output = None

        # Note: This dictionary *must* contain the error key, because when
        # the line is *printed*, it will be read by process_monitor.py
        # run_action which is expecting the line to start with {'error
        output_dict = {"error": error, "output": output}
        if error is not None:
            print("ERROR:", error)
        print("output:", output)

        output_str = json.dumps(output_dict, sort_keys=True)
        print(output_str)

        if error == "Action error":
            print(f"EXITING: Chroma worker recieved unknown command: {action}")
            exit(-1)

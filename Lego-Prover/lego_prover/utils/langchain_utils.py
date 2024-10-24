from __future__ import annotations
import random
import time

from langchain.schema import (
    LLMResult,
    AIMessage,
    HumanMessage,
    SystemMessage,
    ChatGeneration,
)
from azure_key import AZURE_API_KEY, AZURE_API_VERSION, AZURE_ENDPOINT

from typing import Any
import openai
import tiktoken
import traceback


class LLMMixture:
    def __init__(self, model_name, temperature, request_timeout) -> None:
        self.encoder = tiktoken.encoding_for_model(model_name=model_name)
        self.model_name = model_name
        self.temperature = temperature
        self.request_timeout = request_timeout

        self.client = openai.AzureOpenAI(
            azure_endpoint=AZURE_ENDPOINT,
            api_version=AZURE_API_VERSION,
            api_key=AZURE_API_KEY,
        )

    def query(
        self, langchain_msgs, llm_type="short", n=1, temperature=None, max_tokens=None
    ):
        success = False
        max_retry = 50
        messages = []
        for msg in langchain_msgs:
            if isinstance(msg, SystemMessage):
                messages.append({"role": "system", "content": msg.content})
            if isinstance(msg, HumanMessage):
                messages.append({"role": "user", "content": msg.content})
        while max_retry > 0:
            try:
                if self.model_name != "gpt-4o-mini":
                    raise NotImplementedError("Only implemented for gpt-4o-mini")
                # Do not need to worry about short vs. long context
                llm_model = self.model_name

                # print(f"ckpt in 1 {llm_type}, {llm_model}")
                if temperature is None:
                    temperature = self.temperature

                response = self.client.chat.completions.create(
                    model=llm_model,
                    messages=messages,
                    temperature=temperature,
                    n=n,
                    max_tokens=max_tokens,
                )
                # print("ckpt in 2")
            except openai.RateLimitError:
                print(".", end="", flush=True)
                time.sleep(0.1)
            except openai.APIConnectionError as e:
                time.sleep(random.randint(1, 30))
                print(f"Openai Connection{e}", flush=True)
                max_retry -= 1
            except openai.APIError as e:
                time.sleep(random.randint(1, 30))
                if 'Bad gateway. {"error":{"code":502,"message":"Bad gateway."' in str(
                    e
                ) or "502: Bad gateway" in str(e):
                    print("-", end="", flush=True)
                else:
                    print(f"APIError了: {e}", flush=True)
                max_retry -= 1
            except Exception as e:
                time.sleep(random.randint(1, 30))
                print(f"Exception 了:{e}", flush=True)
                traceback.print_exc()
                max_retry -= 1
            else:
                success = True
                break
        if success:
            if n == 1:
                res = response.choices[0].message.content
                return res
            else:
                res = []
                for ix in range(n):
                    res.append(response.choices[ix].message.content)
                return res
        else:
            return ""

    def __call__(self, messages, temperature=None, max_tokens=1024, n=1) -> Any:
        word_count = 0
        for msg in messages:
            word_count += len(self.encoder.encode(msg.content))
        if word_count < 3500:
            results = self.query(messages, "short", temperature=temperature, n=n)
        elif word_count < (16385 - 2100):
            results = self.query(
                messages,
                "long",
                temperature=temperature,
                max_tokens=max_tokens,
                n=n,
            )
        else:
            assert False, f"query too long, with {word_count} token in total"

        if n == 1:
            return AIMessage(content=results)
        else:
            ret_messages = []
            for res in results:
                ret_messages.append(AIMessage(content=res))
            return ret_messages

    def generate(
        self, batch_message, slow_mode=False, temperature=None, max_tokens=1024
    ):
        if slow_mode is False:
            # print("ckpt 1")
            n = len(batch_message)
            word_count = 0
            messages = batch_message[0]
            for msg in messages:
                word_count += len(self.encoder.encode(msg.content))
            if word_count < 3500:
                results = self.query(
                    messages,
                    "short",
                    n=n,
                    temperature=temperature,
                    max_tokens=max_tokens,
                )
            elif word_count < 15000:
                results = self.query(
                    messages,
                    "long",
                    n=n,
                    temperature=temperature,
                    max_tokens=max_tokens,
                )
            else:
                assert False, f"query too long, with {word_count} token in total"

            generations = []
            for res in results:
                generations.append([ChatGeneration(message=AIMessage(content=res))])
            # print(f"Here successful with {len(results)}")
            return LLMResult(generations=generations)
        else:
            results = []
            for messages in batch_message:
                word_count = 0
                messages = batch_message[0]
                for msg in messages:
                    word_count += len(self.encoder.encode(msg.content))
                if word_count < 7000:
                    res = self.query(messages, "short")
                else:
                    res = self.query(messages, "long")
                results.append(res)
            generations = []
            for res in results:
                generations.append([ChatGeneration(text=res)])
            return LLMResult(generations=generations)

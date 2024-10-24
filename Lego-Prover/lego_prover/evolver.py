"""
Generalize:
Relax Constraints: Identify which assumptions or constraints can be relaxed without making the theorem false.
Broaden Definitions: If a concept is defined very narrowly, see if a more general definition would also work.
Identify Parameters: If numbers are used, identify them as parameters and explore how they might change.
Extend Dimensions: If the problem is defined in a specific number of dimensions, consider if it holds in more or fewer dimensions.

Identify Key Concepts: Determine the essential ideas, methods, or theorems that are crucial to solving the initial problem.
Parameterize: If the problem involves specific numbers, generalize it by replacing these with variables.
Isolate Techniques: Note any specific techniques used to solve the problem—these can often be applied elsewhere.

Alter Conditions: Introduce small changes to the original problem (e.g., add constraints or relax some conditions) and attempt to solve it again.
Scale Complexity: Try both simpler and more complicated versions of the problem to see how the approach adapts.
Switch Domains: Apply the core principles or techniques to problems in other areas of mathematics or even other disciplines.

Identify Similarities: Look for problems that seem unrelated but share the same core principle or solution technique.
Draw Analogs: Sometimes, the structure of a problem in one area of mathematics mirrors the structure in another area. Recognizing these analogs can help you transfer knowledge.
"""

import os
import re
import random
import traceback
from lego_prover.agents.skill import SkillManager
from lego_prover.env.chromas import ChromaBridge
from lego_prover.env.isa_bridge import IsabelleEnv
import lego_prover.utils as U
from langchain.prompts import SystemMessagePromptTemplate

from lego_prover.utils.langchain_utils import LLMMixture

import multiprocessing as mp

import logging

EVOLVE_TYPES = {
    "extend_dimensions": 0.1,
    "identify_key_concepts": 0.1,
    "parameterize": 0.1,
    "scale_complexity": 0.1,
}

GENERAL_TYPE = ["do_request"]


class DummyRetriever:
    """
    Retrieves a fixed object when called.
    """

    def __init__(self, value):
        self.value = value

    def __call__(self):
        return self.value

    def values(self):
        return [self.value]


class RandomRetriever:
    """
    Returns an object corresponding to a miniF2F problem, but only if
    the problem instance has not yet been solved by LEGO-Prover.
    """

    def __init__(self, msg_value: dict, logger, curriculum_agent_lock, ckpt_dir):
        """
        msg_value (dict): Mapping from miniF2F task name to the object to be retrieved
        logger (Logger): Logger on which to log the retrieval
        curriculum_agent_lock (Lock): lock for accessing the .json file of completed tasks
        ckpt_dir (str): Checkpoint directory (the .json of completed tasks is stored within
                  the checkpoint directory)
        """
        self.msg_value = msg_value
        self.logger = logger
        self.curriculum_agent_lock = curriculum_agent_lock
        self.completed_tasks = []
        self.complete_task_path = f"{ckpt_dir}/curriculum/completed_tasks.json"

    def _update_completed(self):
        # Get lock then read what tasks are done
        with self.curriculum_agent_lock:
            self.completed_tasks = U.load_json(self.complete_task_path)

        self.completed_tasks = [U.problem_id(x) for x in self.completed_tasks]

        # Prune any object corresponding to finished tasks
        self.msg_value = {
            x: self.msg_value[x]
            for x in self.msg_value
            if x not in self.completed_tasks
        }

    def __call__(self):
        """
        Returns an object corresponding to an unfinished miniF2F task.
        """
        # Prune the skill managers of any tasks that are already complete
        self._update_completed

        # Randomly sample a skill manager from the rest to be evolved
        msg, value = random.sample(self.msg_value.items(), k=1)[0]
        self.logger.info(f"Randomly selected {msg} SkillManager")
        return value

    def values(self):
        return self.msg_value.values()


class Evolver:

    def __init__(
        self,
        rank,
        isabelle_path,
        ckpt_dir,
        server_port,
        data_split="valid",
        skill_manager_lock=U.WithEmpty(),
        model_name="gpt-4",
        temperature=0.7,
        chroma_bridge: ChromaBridge = None,  # type: ignore
        miniF2F_tasks: mp.Queue = None,  # type: ignore
        isolate: bool = False,
        curriculum_agent_lock=U.WithEmpty(),
    ) -> None:
        """
        A class representing an evolver for the LEGO Prover system.

        Args:
            rank (int): The rank of the evolver.
            isabelle_path (str): The path to the Isabelle installation.
            ckpt_dir (str): The directory to save checkpoints.
            server_port (int): The port number for the Isabelle server.
            data_split (str, optional): The data split to use. Defaults to "valid".
            skill_manager_lock (Any, optional): A lock for the skill manager. Defaults to U.WithEmpty().
            model_name (str, optional): The name of the language model to use. Defaults to "gpt-4".
            temperature (float, optional): The temperature for the language model. Defaults to 0.7.
            chroma_bridge (ChromaBridge): A bridge to the Chroma system. Defaults to None.
            miniF2F_tasks (mp.Queue): The queue for miniF2F tasks.
            isolate (bool): If true, run an ablation giving each task an isolated library.
            curriculum_agent_lock (Lock): The lock for the curriculum agent.
        """
        self.logger = logging.getLogger(f"evolver-{rank}")
        self.ckpt_dir = ckpt_dir
        # self.chroma_bridge = chroma_bridge
        self.skill_manager_lock = skill_manager_lock
        self.data_split = data_split

        self.miniF2F_tasks = miniF2F_tasks
        assert miniF2F_tasks is not None

        self.llm = LLMMixture(
            model_name=model_name,
            temperature=temperature,
            request_timeout=16000,
        )

        self.env = IsabelleEnv(
            logger=self.logger, isabelle_path=isabelle_path, server_port=server_port
        )
        self.env.reset()

        # Will be overwritten later on
        self.skill_manager = None

        # Under non-ablation, we use a dummy retriever so that
        # the Evolver is always using the same Skill Manager,
        # and therefore all tasks share the library
        if not isolate:
            assert isinstance(chroma_bridge, ChromaBridge)
            self.skill_managers = DummyRetriever(
                SkillManager(
                    rank=rank,
                    logger=self.logger,
                    ckpt_dir=ckpt_dir,
                    skill_manager_lock=skill_manager_lock,
                    chroma_bridge=chroma_bridge,
                )
            )
        # Under the ablation, we create a separate Skill Manager for
        # each task being solved (i.e., each task has its own
        # isolated library). The SkillManager used by the
        # Evolver is randomly selected by the RandomRetriever
        # every time it tries to evolve a Lemma. The
        # RandomRetriever only returns a SkillManager
        # corresponding to an unsolved problem.
        else:
            assert isinstance(chroma_bridge, dict)
            self.skill_managers = RandomRetriever(
                msg_value={
                    pn: SkillManager(
                        rank=rank,
                        logger=self.logger,
                        ckpt_dir=os.path.join(ckpt_dir, pn),
                        skill_manager_lock=skill_manager_lock,
                        chroma_bridge=cb,
                    )
                    for (pn, cb) in chroma_bridge.items()
                },
                logger=self.logger,
                curriculum_agent_lock=curriculum_agent_lock,
                ckpt_dir=ckpt_dir,
            )

        with skill_manager_lock:
            for skill_manager in self.skill_managers.values():
                skill_manager.sync_checkpoint()

    def _do_request(self, request_statement, skills, n_attempts=3):
        skill_text = []
        for skill in skills:
            statement = self.env.get_marker_statement(skill)
            exp = f"""# Statement
```isabelle
{statement}
```

# Proof
```isabelle
theory Scratch
  imports Complex_Main
begin

{skill}

end
```
"""
            skill_text.append(exp)
        skill_text = "\n\n####################\n\n".join(skill_text)

        template = U.load_text(f"lego_prover/prompts/skill_evolver/do_request.txt")
        system_message = SystemMessagePromptTemplate.from_template(template)
        system_message = system_message.format(
            examples=skill_text, formal_statement=request_statement
        )

        self.logger.info(
            f"****do_request evolver system message****\n{system_message.content}"
        )

        result_codes = []
        try:
            ai_messages = self.llm(
                [system_message], temperature=0.7, max_tokens=1024, n=n_attempts
            )
            for ai_message in ai_messages:
                self.logger.info(
                    f"****do_request evolver ai message****\n{ai_message.content}"
                )

                parsed_result = re.findall(
                    r"```isabelle(.*?)```", ai_message.content, re.DOTALL
                )
                if len(parsed_result) == 0:
                    continue
                parsed_result = parsed_result[0]

                if len(parsed_result) > 0:
                    self.logger.info("Verifying with isabelle env...")
                    verified_result, _, result_code, _ = self.env.step(
                        code=parsed_result
                    )
                    self.logger.info(f"Success: {verified_result['success']}")
                    self.logger.info(f"Reason: {verified_result['reason']}")
                    result_codes.extend(result_code)
        except Exception as e:
            self.logger.warn(f"do_request evolver error with: {str(e)}")
            self.logger.warn(f"Trace back:\n{traceback.format_exc()}")
            result_codes = []

        for _, full_code in result_codes:
            self.logger.info(f"Result code {full_code}")
        return result_codes

    def _directed_evolve(self, problems, code, evolve_type, n_attempts=3):
        problem_text = []
        for ix, problem in enumerate(problems):
            problem_text.append(f"#### problem {ix + 1} ####\n{problem}")
        problem_text = "\n\n".join(problem_text)

        if "theory" not in code:
            code = f"theory Scratch\n  imports Complex_Main\nbegin\n\n{code}\n\nend\n"

        with open(f"data/evolver_examples/{evolve_type}.txt", "r") as f:
            text = f.read()
        ori_examples = [e.strip() for e in text.split("<split>")]

        examples = random.sample(ori_examples, min(3, len(ori_examples)))
        random.shuffle(examples)
        examples = "\n\n####################\n\n".join(examples)

        template = U.load_text(f"lego_prover/prompts/skill_evolver/{evolve_type}.txt")
        system_message = SystemMessagePromptTemplate.from_template(template)
        system_message = system_message.format(
            problems=problem_text, examples=examples, code=code
        )

        self.logger.info(
            f"****{evolve_type} evolver system message****\n{system_message.content}"
        )

        result_codes = []
        try:
            ai_messages = self.llm(
                [system_message], temperature=0.7, max_tokens=1024, n=n_attempts
            )
            for ai_message in ai_messages:
                self.logger.info(
                    f"****{evolve_type} evolver ai message****\n{ai_message.content}"
                )
                text = ai_message.content
                # code_pattern = re.compile(r"```(?:[i|I]sabelle)(.*?)```", re.DOTALL)
                parsed_result = re.findall(r"```isabelle(.*?)```", text, re.DOTALL)
                if len(parsed_result) == 0:
                    continue
                parsed_result = parsed_result[0]
                if len(parsed_result) > 0:
                    self.logger.info("Verifying with isabelle env...")
                    if "theory" not in parsed_result:
                        parsed_result = f"theory Scratch\n  imports Complex_Main\nbegin\n\n{parsed_result}\n\nend\n"
                    verified_result, _, result_code, _ = self.env.step(
                        code=parsed_result
                    )
                    self.logger.info(f"Success: {verified_result['success']}")
                    self.logger.info(f"Reason: {verified_result['reason']}")
                    result_codes.extend(result_code)
        except Exception as e:
            self.logger.warn(f"{evolve_type} evolver error with: {str(e)}")
            self.logger.warn(f"Trace back:\n{traceback.format_exc()}")
            result_codes = []

        for _, full_code in result_codes:
            self.logger.info(f"Result code {full_code}")
        return result_codes

    def retrieve_problems(self, query):
        assert isinstance(self.skill_manager, SkillManager)

        if os.path.exists(f"{self.ckpt_dir}/curriculum/completed_tasks.json"):
            completed_problem = U.load_json(
                f"{self.ckpt_dir}/curriculum/completed_tasks.json"
            )
        else:
            completed_problem = []

        k = 20
        self.logger.info(f"Evolver retrieving for {k} problems")
        with self.skill_manager_lock:
            data = (f"{self.data_split}_problem_query", {"query": query, "k": k})
            outputs = self.skill_manager.chroma_bridge.run_cmd(data)
            ret_problem_names = []
            if outputs["error"] is None:
                ret_problem_names = outputs["output"]
        ret_problem_names = list(
            filter(lambda x: x not in completed_problem, ret_problem_names)
        )
        self.logger.info(f"Return with {len(ret_problem_names)} problems")

        k = min(len(self.skill_manager.skill_requests), 20)
        ret_request_names = []
        if k != 0:
            with self.skill_manager_lock:
                data = ("request_query", {"query": query, "k": k})
                outputs = self.skill_manager.chroma_bridge.run_cmd(data)
                if outputs["error"] is None:
                    ret_request_names = outputs["output"]
                self.skill_manager.sync_checkpoint()
            ret_request_names = list(
                filter(
                    lambda x: self.skill_manager.skill_requests[x]["problem_name"]
                    not in completed_problem,
                    ret_request_names,
                )
            )
            self.logger.info(f"Return with {len(ret_request_names)} requests")

        problem_statements = []
        for problem_name in ret_problem_names:
            if "imosl" in problem_name:
                continue
            try:
                context = U.load_json(problem_name)
            except FileNotFoundError:
                self.logger.warn(f"Unable to find {problem_name}, skipping file")
                continue
            problem_statements.append(context["formal_statement"])

        request_statement = [
            self.skill_manager.skill_requests[request_name]["formal_statement"]
            for request_name in ret_request_names
        ]
        statements = request_statement + problem_statements
        statements = random.sample(statements, min(4, len(statements)))

        return statements

    def evolve_single_skill(self, context):
        assert isinstance(self.skill_manager, SkillManager)

        if random.random() > 0.7:
            evolve_type = random.choice(list(EVOLVE_TYPES.keys()))
        else:
            evolve_type = random.choice(GENERAL_TYPE)

        if evolve_type in EVOLVE_TYPES:
            marker = context["marker"]
            problems = self.retrieve_problems(marker)
            code = context["full_code"]
            result_code = self._directed_evolve(
                problems, code, evolve_type, n_attempts=3
            )
        elif evolve_type == "do_request":
            if os.path.exists(f"{self.ckpt_dir}/curriculum/completed_tasks.json"):
                completed_problem = U.load_json(
                    f"{self.ckpt_dir}/curriculum/completed_tasks.json"
                )
            else:
                completed_problem = []
            with self.skill_manager_lock:
                self.skill_manager.sync_checkpoint()
            request_list = list(
                filter(
                    lambda x: x["problem_name"] not in completed_problem,
                    list(self.skill_manager.skill_requests.values()),
                )
            )
            if len(request_list) > 0:
                request_list = sorted(request_list, key=lambda x: x["update_count"])
                smallest_request_update_count = request_list[0]["update_count"]
                smallest_request_list = []
                for elem in request_list:
                    if elem["update_count"] == smallest_request_update_count:
                        smallest_request_list.append(elem)
                    else:
                        break
                request = random.choice(smallest_request_list)
                skills = self.skill_manager.retrieve_skills(
                    request["formal_statement"], 5
                )
                skills = [skill["code"] for skill in skills]
                skills = random.sample(skills, 3)
                result_code = self._do_request(
                    request["formal_statement"], skills, n_attempts=3
                )
                self.skill_manager.update_count_request(request["request_name"])
            else:
                result_code = []
        else:
            raise NotImplementedError

        if len(result_code) > 10:
            self.logger.warn(
                f"Result code is too much! with {len(result_code)} result codes"
            )

        for mk, full_code in result_code:
            skill_full_code = (
                f"""theory Scratch\n  imports Complex_Main\nbegin\n\n{full_code}\nend"""
            )
            result, *_ = self.env.step(skill_full_code, quick_check=True)
            if result is True:
                skill_name = self.env.get_lemma_name(mk)
                origin = context["skill_name"]
                if evolve_type == "do_request":
                    origin = "do_request"
                self.logger.info(f"adding skill {full_code}")
                self.skill_manager.add_new_skill(
                    skill_name=skill_name,
                    description="-",
                    marker=mk,
                    full_code=full_code,
                    origin=origin,
                )

    def evolve(self):
        # continue evolving for as long as there are problems to be solved.
        while self.miniF2F_tasks.qsize() > 0:
            # Select the skill manager to evolve
            self.skill_manager = self.skill_managers()

            with self.skill_manager_lock:
                self.skill_manager.sync_checkpoint()
            skill_list = sorted(
                self.skill_manager.skills.values(), key=lambda x: x["update_count"]
            )
            smallest_skill_update_count = skill_list[0]["update_count"]
            smallest_skill_list = []
            for elem in skill_list:
                if elem["update_count"] == smallest_skill_update_count:
                    smallest_skill_list.append(elem)
                else:
                    break
            skill = random.choice(smallest_skill_list)
            self.evolve_single_skill(skill)

        self.logger.info("miniF2F_tasks queue is empty; halting evolver.")

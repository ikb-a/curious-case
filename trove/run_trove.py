"""Online Function Induction and Program Solution Generation."""

import os
import math
import torch
import random
import argparse
import transformers
from utils import *
from mako.template import Template
from transformers import AutoTokenizer
import datetime
from typing import Dict, Union, List, Set, Mapping
import json
from transformers import BitsAndBytesConfig
from copy import deepcopy


class DummyFile:
    def __init__(
        self,
        save_path: Union[str, os.PathLike],
        inner_list: Union[List[str], None] = None,
    ) -> None:
        self.inner_list = inner_list or list()
        self.save_path = save_path

    def write(self, value: str) -> None:
        self.inner_list.append(value)

    def close(self) -> None:
        with open(self.save_path, "w") as outfile:
            print("".join(self.inner_list), file=outfile)


def save_main_state(
    FIRST_PASS_START_INDEX: int,
    TRIM_START_IDX: int,
    library: Mapping[str, Mapping[str, Union[str, int, List[int]]]],
    result_list: List[
        Dict[
            str,
            Union[str, Dict[str, Union[str, Dict[str, Union[str, bool, float, list]]]]],
        ]
    ],
    trimmed_indices: Set[int],
    args: argparse.Namespace,
    fw_log: DummyFile,
    raw_model_responses: List[dict],
    job_done: bool = False,
) -> None:
    """
    Save the state of the current evaluation pass as a .json checkpoint file
    """
    # Double check all typing has been done correctly
    assert type(FIRST_PASS_START_INDEX) == int, FIRST_PASS_START_INDEX
    assert type(TRIM_START_IDX) == int, TRIM_START_IDX
    assert type(library) == dict, library
    for key in library:
        assert type(key) == str, key
        assert isinstance(library[key], dict)

        for subkey in library[key]:
            assert isinstance(subkey, str)
            assert type(library[key][subkey]) in [str, int, list], library[key][subkey]
            if type(library[key][subkey]) == list:
                assert all(type(x) == int for x in library[key][subkey]), library[key][
                    subkey
                ]
    for result in result_list:
        assert type(result) == dict, result
        for key in result:
            assert type(key) == str, key
            assert type(result[key]) in [str, dict], result[key]
            if type(result[key]) == dict:
                for result_key in result:
                    assert type(result_key) == str, result_key
                    assert type(result[result_key]) in [str, dict], result[result_key]
                    if isinstance(result[result_key], dict):
                        innermost = result[result_key]
                        assert isinstance(
                            innermost, dict
                        )  # For Pylance to stop complaining
                        for innermost_key in innermost:
                            assert isinstance(innermost_key, str)
                            assert type(innermost[innermost_key]) in [
                                str,
                                bool,
                                float,
                                list,
                            ]
    assert type(trimmed_indices) == set
    assert all(type(x) == int for x in trimmed_indices)
    assert type(fw_log) == DummyFile

    # Convert trimmed indices into a list & args into a dict for easier saving
    state = {
        "FIRST_PASS_START_INDEX": FIRST_PASS_START_INDEX,
        "TRIM_START_IDX": TRIM_START_IDX,
        "library": library,
        "result_list": result_list,
        "trimmed_indices": list(trimmed_indices),
        "args": vars(args),
        "fw_log": fw_log.inner_list,
        "job_done": job_done,
    }

    if args.store_raw:
        state["raw"] = raw_model_responses

    # NOTE: Don't have to create file indicating that job is in-progress, that's marked in this file
    tmp_path = f"{args.preempt_results_path.strip()}.tmp"
    with open(tmp_path, "w") as outfile:
        json.dump(state, outfile, indent=2, sort_keys=True)

    os.replace(tmp_path, args.preempt_results_path)


def check_args_match(args1: dict, args2: dict):
    args1 = deepcopy(args1)
    args2 = deepcopy(args2)

    # Name of temp file used for program execution doesn't matter
    if "exec_file" in args1 and "exec_file" in args2:
        del args1["exec_file"]
        del args2["exec_file"]

    # Allow the inference server's URL to change (consequence of preemption)
    if (
        "openaiinfer" in args1
        and "openaiinfer" in args2
        and args1["openaiinfer"] not in ["COST_ESTIMATE", "OPENAI"]
        and args2["openaiinfer"] not in ["COST_ESTIMATE", "OPENAI"]
    ):
        del args1["openaiinfer"]
        del args2["openaiinfer"]

    # Allow num_return_sequences to change under ablation 1, since that overwrites the value
    if (
        "ablation1" in args1
        and "ablation1" in args2
        and args1["ablation1"]
        and args2["ablation1"]
    ):
        del args1["num_return_sequences"]
        del args2["num_return_sequences"]

    assert (
        args1 == args2
    ), f"saved args: {json.dumps(args2, indent=2, sort_keys=True)}\n\n\n\ninput args: {json.dumps(args1, indent=2, sort_keys=True)}"


def load_main_state(args):
    """
    Attempt to load the last checkpoint.
    Raises FileNotFound if no such checkpoint exists.

    Exits if the checkpoint is marked as completed, and raises an assertion error if the arguments saved in the checkpoint mismatch the current commandline arguments
    """
    with open(args.preempt_results_path, "r") as infile:
        state = json.load(infile)

    check_args_match(vars(args), state["args"])
    if state["job_done"]:
        print("Exiting, loaded job is already done")
        exit(0)

    return (
        state["FIRST_PASS_START_INDEX"],
        state["TRIM_START_IDX"],
        state["library"],
        state["result_list"],
        set(state["trimmed_indices"]),
        DummyFile(args.output_log_path, inner_list=state["fw_log"]),
    )


def main():
    assert isinstance(args, argparse.Namespace)
    # If we're preemptable, first check we're not already done
    # Note this call ignores the retrieved values, it's just here
    # to exit if we're done
    if args.preemptable:
        try:
            load_main_state(args)
        except FileNotFoundError:
            pass

    if args.verbose:
        print(f"{datetime.datetime.now()} Loading dataset", flush=True)

    # load dataset and prompt templates
    dataset = load_dataset(args.task_name, args.max_num_examples)
    if args.shuffle_seed is not None:
        random.Random(args.shuffle_seed).shuffle(dataset)

    if args.verbose:
        print(f"{datetime.datetime.now()} Creating templates", flush=True)

    # prompt templates
    create_path = os.path.join("prompt", args.task_name, "online_create.md")
    template_create = Template(filename=create_path)
    import_path = os.path.join("prompt", args.task_name, "online_import.md")
    template_import = Template(filename=import_path)
    skip_path = os.path.join("prompt", args.task_name, "online_skip.md")
    template_skip = Template(filename=skip_path)

    # Note: original TroVE code edited args.task_name, but that was a messy design reliant on specific
    #       operations being before or after the rename operation.
    TASK_FAMILY_NAME: str = (
        args.task_name if "/" not in args.task_name else args.task_name.split("/")[0]
    )

    if args.verbose:
        print(f"{datetime.datetime.now()} Loading library", flush=True)
    # library
    library_path = os.path.join("toolbox", f"{TASK_FAMILY_NAME}.py")
    default_library = load_toolbox(library_path)
    library = load_toolbox(library_path)

    if args.verbose:
        print(f"{datetime.datetime.now()} Loading model", flush=True)
    if not args.disable_llm and args.openaiinfer is None:
        model_kwargs = None
        if args.quant8bit:
            model_kwargs = {
                "quantization_config": BitsAndBytesConfig(load_in_8bit=True)
            }

        # configure generation pipeline
        pipeline = transformers.pipeline(
            "text-generation",  # ignore: type
            model=args.model_name,
            torch_dtype=torch.float16,
            device_map="auto",
            model_kwargs=model_kwargs,  # type: ignore
        )

        assert pipeline.tokenizer is not None
        pipeline.tokenizer.pad_token_id = pipeline.model.config.eos_token_id
        tokenizer = AutoTokenizer.from_pretrained(args.model_name)
        stable_gen_args = {
            "temperature": args.temperature,
            "top_p": args.top_p,
            "eos_token_id": tokenizer.eos_token_id,
            "pad_token_id": tokenizer.eos_token_id,
            "return_full_text": False,  # don't return the prompt!
        }
    elif not args.disable_llm and args.openaiinfer is not None:
        pipeline = inference_connection_constructor(
            url=args.openaiinfer, verbose=False, model_name=args.model_name
        )
        stable_gen_args = {
            "temperature": args.temperature,
            "top_p": args.top_p,
            "eos_token_id": None,
            "pad_token_id": None,
        }

    # Store log in memory until we're done -- makes preemption simpler to deal with
    # fw_log = open(args.output_log_path, 'w')
    fw_log = DummyFile(args.output_log_path)

    raw_model_responses = []

    def get_example_responses(
        example: dict,
        index: int,
        template: Template,
        library: dict,
        verbose: bool = False,
    ) -> list[dict]:
        """Get model responses [solution + function(s)] for an example."""
        # NOTE: Trove functions by prefacing the solution code with the definitions of
        #       everything in the toolbox, then purging any imports in the code that
        #       the LLM generated that import "from the toolbox"
        assert isinstance(args, argparse.Namespace)
        # input
        prompt_args = PROMPT_ARGS_FUNC[TASK_FAMILY_NAME](example)
        if (
            len(library) > 0
            or TASK_FAMILY_NAME.startswith("math")
            or args.openaiinfer == "COST_ESTIMATE"
        ):
            prompt_args["toolbox"] = format_toolbox(library)
            prompt = template.render(**prompt_args)
            assert isinstance(prompt, str)
            write_prompt(fw_log, prompt, prompt_args["toolbox"], index)
        else:
            prompt = template.render(**prompt_args)
            assert isinstance(prompt, str)
            write_prompt(fw_log, prompt, "", index)

        if verbose:
            print("Decode from LLM", flush=True)

        # output
        if args.disable_llm:
            response_list = [
                {"generated_text": DUMMY_RESPONSE}  # f"{prompt}{DUMMY_RESPONSE}"
            ] * args.num_return_sequences
        else:
            if (
                args.openaiinfer
            ):  # I believe the API will already account for prompt len
                max_tokens = args.max_new_tokens
            else:
                max_tokens = len(tokenizer(prompt)["input_ids"]) + args.max_new_tokens  # type: ignore
            response_list = pipeline(
                prompt,
                do_sample=True,
                max_length=max_tokens,
                num_return_sequences=args.num_return_sequences,
                **stable_gen_args,
            )

        if args.store_raw:
            raw_model_responses.append(response_list)

        if verbose:
            print("Execute responses", flush=True)

        resp_dict_list = []

        first = True
        for r in response_list:  # type: ignore
            # TODO: More efficient solution?
            # Make certain the model is *not* returning the prompt as part of the solution
            if first:
                assert not r["generated_text"].strip().startswith(prompt.strip()), r["generated_text"]  # type: ignore
                first = False
            r = extract_llama_response(r["generated_text"], input_text=prompt)  # type: ignore
            resp_dict_list.append(parse_model_response(r))

        # execute
        for j, res in enumerate(resp_dict_list):
            # collect code pieces
            code_pieces = []
            for _, func_dict in library.items():
                code_pieces.append(func_dict["function"])
            for func_dict in res["function"]:
                code_pieces.append(func_dict["function"])
            code_pieces.append(unwrap_code(res["solution"]))
            code_pieces = clean_import(code_pieces)

            # execute, evaluate
            is_success, exec_output = execute_code_wrapped(
                code_pieces=code_pieces,
                exec_file=args.exec_file,
                timeout=args.exec_timeout,
            )
            if "answer" in example:
                answer = example["answer"]
            elif "answers" in example:
                answer = example["answers"]
            else:
                raise ValueError(f"Invalid example w/o answers: {example.keys()}")
            is_correct, model_answer = EVAL_FUNC[TASK_FAMILY_NAME](
                is_success=is_success,
                model_output=exec_output,
                answer=answer,
                return_answers=True,
            )
            exec_dict = {
                "is_success": is_success,
                "is_correct": is_correct,
                "exec_output": exec_output,
                "model_answers": model_answer,
                "answer": answer,
            }

            # update results, log, and library
            resp_dict_list[j].update(exec_dict)
            write_exec_result(fw_log, exec_dict, index=j)
            write_solution_and_tools(
                fw_log, res, library, update_toolbox=False, index=j
            )

        return resp_dict_list

    def update_library(
        function_list: list[dict], library: dict, match_old: bool = False
    ) -> dict:
        """Update library with function usage or creation."""
        for func_dict in function_list:
            func_name = func_dict["name"]
            if func_name.startswith("toolbox."):
                func_name = func_name[8:]
            if func_name not in library:
                library[func_name] = func_dict
                library[func_name]["indices"] = [i]
                library[func_name]["frequency"] = 1
            elif match_old and (func_name in library):
                library[func_name]["indices"].append(i)
                library[func_name]["frequency"] += 1
        return library

    def multi_way_generation(
        example: dict,
        index: int,
        modes: list[str] = ["import", "create", "skip"],
        verbose=False,
    ) -> dict:
        """Multi-way generation of selected modes."""
        candidate_list = []
        if not args.ablation1:
            if "import" in modes:
                if verbose:
                    print("Begin import run", flush=True)

                import_resp_list = get_example_responses(
                    example, index, template_import, library, verbose=verbose
                )
                best_import_index = select_best_solution(
                    import_resp_list, verbose=verbose
                )
                candidate_list.append(import_resp_list[best_import_index])

            if "create" in modes:
                if verbose:
                    print("Begin create run", flush=True)
                create_resp_list = get_example_responses(
                    example, index, template_create, default_library, verbose=verbose
                )
                best_create_index = select_best_solution(
                    create_resp_list, verbose=verbose
                )
                candidate_list.append(create_resp_list[best_create_index])

            if "skip" in modes:
                if verbose:
                    print("Begin skip run", flush=True)
                skip_resp_list = get_example_responses(
                    example, index, template_skip, default_library, verbose=verbose
                )
                best_skip_index = select_best_solution(skip_resp_list, verbose=verbose)
                candidate_list.append(skip_resp_list[best_skip_index])
        else:
            # Ablation 1
            # Import mode: 0 instances.
            # Create mode: 7 instances.
            args.num_return_sequences = 7
            if verbose:
                print("Ablation1: Begin create run", flush=True)
            create_resp_list = get_example_responses(
                example, index, template_create, default_library, verbose=verbose
            )
            best_create_index = select_best_solution(create_resp_list, verbose=verbose)
            candidate_list.append(create_resp_list[best_create_index])

            # Skip mode: 8 instances
            args.num_return_sequences = 8
            if verbose:
                print("Ablation1: Begin skip run", flush=True)
            skip_resp_list = get_example_responses(
                example, index, template_skip, default_library, verbose=verbose
            )
            best_skip_index = select_best_solution(skip_resp_list, verbose=verbose)
            candidate_list.append(skip_resp_list[best_skip_index])

        best_resp_index = select_best_solution(candidate_list)
        best_mode = modes[best_resp_index]
        best_resp = candidate_list[best_resp_index]

        if best_mode == "import":
            update_library(best_resp["function"], library, match_old=True)
        if (best_mode == "create") and (best_resp["is_success"]):
            update_library(best_resp["function"], library, match_old=False)

        return {"mode": best_mode, "response": best_resp}

    def trim_library(n: int, library: dict) -> dict:
        """Trimming low-frequency functions from the library."""
        threshold = math.log(n, 20)
        print(
            f"Trimming library of size #{len(library)}",
            f"Usage frequency threshold: {threshold:.2f}",
        )
        for name, d in library.items():
            print(name, " | ", d["frequency"])
            if d["frequency"] < threshold:
                for idx in d["indices"]:
                    trimmed_indices.add(idx)
        trimmed_library = {
            name: d for name, d in library.items() if d["frequency"] >= threshold
        }
        print(f"To size #{len(trimmed_library)}")
        write_trim(fw_log, library, trimmed_library)
        return trimmed_library

    # start streaming examples
    result_list = []
    trimmed_indices = set()

    first_pass_start_index = 0
    trim_start_idx = 0

    # Attempt to load program state here, if --preemptable
    if args.preemptable:
        try:
            (
                first_pass_start_index,
                trim_start_idx,
                library,
                result_list,
                trimmed_indices,
                fw_log,
            ) = load_main_state(args)
            print("Loaded preempted job")
        except FileNotFoundError:
            pass

    ORI_FIRST_PASS_START_INDEX = first_pass_start_index
    for i in range(first_pass_start_index, len(dataset)):
        ex = dataset[i]

        if args.verbose:
            print(f"{datetime.datetime.now()} {i}/{len(dataset)}", flush=True)

        # multi-channel (3-way) generation
        result_dict = multi_way_generation(
            example=ex,
            index=i,
            modes=["import", "create", "skip"],
            verbose=args.verbose and i == ORI_FIRST_PASS_START_INDEX,
        )
        result_list.append(result_dict)

        # periodic forgetting
        if (i + 1) % args.trim_steps == 0:
            library = trim_library(i + 1, library)

        # Periodically save state here if --preemptable
        first_pass_start_index = i + 1  # Record this so it can be restored
        if args.preemptable and (i + 1) % args.preemption_log_freq == 0:
            if args.verbose:
                print(f"{datetime.datetime.now()} Checkpointing", flush=True)
            save_main_state(
                FIRST_PASS_START_INDEX=first_pass_start_index,
                TRIM_START_IDX=trim_start_idx,
                library=library,
                result_list=result_list,
                trimmed_indices=trimmed_indices,
                args=args,
                fw_log=fw_log,
                job_done=False,
                raw_model_responses=raw_model_responses,
            )

    # final forgetting
    # Trim library & report results only if we haven't already done so in the past (i.e., the job isn't run in preemptable mode, or trimming hasn't been done yet)
    if not args.preemptable or trim_start_idx == 0:
        library = trim_library(len(dataset), library)

        correct_list = [r["response"]["is_correct"] for r in result_list]
        acc = sum(correct_list) / len(correct_list)
        print(f"Overall Response Accuracy: {acc:.2f}")
        print(f"Toolbox Size: #{len(library)}")
        fw_log.write(
            f"\n## Overall Response Accuracy (before re-running solutions using trimmed functions): {acc:.2f}\n"
        )
        fw_log.write(f"Toolbox Size: #{len(library)}")

    # update solutions of examples missing tools
    sorted_trimmed_indices = sorted(list(trimmed_indices))
    print(
        f"Re-generate solutions for #{len(trimmed_indices)} examples that had functions trimmed."
    )
    for trimmed_indices_index in range(trim_start_idx, len(trimmed_indices)):
        i = sorted_trimmed_indices[trimmed_indices_index]

        if args.verbose:
            print(
                f"{datetime.datetime.now()} {trimmed_indices_index}/{len(trimmed_indices)} ",
                flush=True,
            )

        result_dict = multi_way_generation(dataset[i], i, ["import", "skip"])
        result_list[i] = result_dict  # update result record

        # periodically save here if preemptable
        trim_start_idx = trimmed_indices_index + 1
        if (
            args.preemptable
            and (trimmed_indices_index + 1) % args.preemption_log_freq == 0
        ):
            if args.verbose:
                print(f"{datetime.datetime.now()} Checkpointing ", flush=True)
            save_main_state(
                FIRST_PASS_START_INDEX=first_pass_start_index,
                TRIM_START_IDX=trim_start_idx,
                library=library,
                result_list=result_list,
                trimmed_indices=trimmed_indices,
                args=args,
                fw_log=fw_log,
                job_done=False,
                raw_model_responses=raw_model_responses,
            )

    correct_list = [r["response"]["is_correct"] for r in result_list]
    acc = sum(correct_list) / len(correct_list)
    print(f"Updated Response Accuracy: {acc:.2f}")

    fw_log.write(
        f"\n## Overall Response Accuracy (after re-running solutions using trimmed functions): {acc:.2f}\n"
    )
    fw_log.write(f"Toolbox Size: #{len(library)}")
    for name, d in library.items():
        fw_log.write(f"=== {name} ===\n")
        fw_log.write(d["function"])
        fw_log.write("\n\n\n")
    fw_log.close()

    dump_json_file(result_list, args.output_results_path)
    dump_toolbox(library, args.output_library_path)

    # Mark job as complete in the preemption file
    if args.preemptable:
        save_main_state(
            FIRST_PASS_START_INDEX=first_pass_start_index,
            TRIM_START_IDX=trim_start_idx,
            library=library,
            result_list=result_list,
            trimmed_indices=trimmed_indices,
            args=args,
            fw_log=fw_log,
            job_done=True,
            raw_model_responses=raw_model_responses,
        )  # Mark job as *done*

    # In the very specific case that we're computing cost, report estimated cost
    if not args.disable_llm and isinstance(pipeline, CostInferenceConnection):
        print("INPUT:")
        print(pipeline.in_total_cost)
        print("OUTPUT:")
        print(pipeline.out_total_cost)

    print("run_trove.py is done!")


def check_toolbox_env(args: argparse.Namespace) -> None:
    TASK_FAMILY_NAME: str = (
        args.task_name if "/" not in args.task_name else args.task_name.split("/")[0]
    )
    library_path = os.path.join("toolbox", f"{TASK_FAMILY_NAME}.py")
    default_library = load_toolbox(library_path)

    # collect code pieces
    code_pieces = ["print('hello world')"]
    for _, func_dict in default_library.items():
        code_pieces.append(func_dict["function"])
    code_pieces = clean_import(code_pieces)

    is_success, exec_output = execute_code_wrapped(
        code_pieces=code_pieces,
        exec_file=args.exec_file,
        timeout=args.exec_timeout,
    )

    if not is_success:
        import sys

        print(
            "Attempt to import default toolbox failed -- please fix environment.",
            file=sys.stderr,
            flush=True,
        )

        raise RuntimeError(exec_output)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    # data config
    parser.add_argument(
        "--task_name",
        type=str,
        required=True,
        choices=[
            "math/algebra",
            "math/counting",
            "math/geometry",
            "math/intermediate",
            "math/number",
            "math/prealgebra",
            "math/precalculus",
            "tabmwp",
            "wtq",
            "hitab",
            "gqa",
        ],
        help="Task name.",
    )
    parser.add_argument("--shuffle_seed", type=int, default=None)

    # experiment config
    parser.add_argument("--run_index", type=int, default=None)

    # example config
    parser.add_argument(
        "--max_num_examples",
        type=int,
        default=None,
        help="Maximum number of examples to generate -- i.e., truncate dataset to this length",
    )
    parser.add_argument(
        "--trim_steps",
        type=int,
        default=500,
        help="Trim library by threshold every N examples.",
    )

    # execution config
    parser.add_argument(
        "--exec_file",
        type=str,
        default="tmp_exec_online.py",
        help="Temporary execution file.",
    )
    parser.add_argument(
        "--exec_timeout",
        type=int,
        default=100,
        help="Timeout for execution in seconds.",
    )

    # generation config
    parser.add_argument(
        "--model_name", type=str, default="codellama/CodeLlama-7b-Instruct-hf"
    )
    parser.add_argument("--top_p", type=float, default=0.95)
    # This is K, i.e., for each of create/import/skip, make this many solutions. Paper says it should be 5.
    parser.add_argument("--num_return_sequences", type=int, default=5)  # 1
    # Adjusted; paper says 0.6
    parser.add_argument("--temperature", type=float, default=0.6)  # 0.3
    # Adjusted; paper says 512
    parser.add_argument("--max_new_tokens", type=int, default=512)  # 256

    # ========================================================================
    # Configs added to the original repository
    parser.add_argument("--verbose", action="store_true")
    parser.add_argument(
        "--disable_llm",
        action="store_true",
        help="If provided, disable the LLM and instead always return 2+2 as the LLM output",
    )
    parser.add_argument(
        "--preemptable",
        action="store_true",
        help="Log periodically and resume if interrupted & restarted. Requires --run_index to be provided, otherwise a new job will be started",
    )
    parser.add_argument(
        "--preemption_log_freq",
        type=int,
        default=10,
        help="If --preemptable, then log results every this many examples",
    )
    parser.add_argument(
        "--quant8bit",
        action="store_true",
        help="Try 8 bit bitsandbytes quantization of the model",
    )
    parser.add_argument(
        "--openaiinfer",
        type=str,
        default=None,
        help="URL to an server supporting the openai API for user in place of HuggingFace inference. Set to `OPENAI` to instead query OpenAI. Set to `ANTHROPIC` to instead query Anthropic. Set to `COST_ESTIMATE` with a --model_name of count to instead count input & output tokens .",
    )
    parser.add_argument(
        "--store_raw",
        action="store_true",
        help="If provided, record the raw model outputs in the preemption dict.",
    )

    parser.add_argument(
        "--ablation1",
        action="store_true",
        help="If provided, disable the the IMPORT branch and instead run with SKIP=8, CREATE=7",
    )

    args = parser.parse_args()
    args.suffix = "trove"
    args = auto_decide_path(args, fields=["library", "log"])

    # Check environment is set up properly:
    # Check we can execute our default toolbox without errors
    check_toolbox_env(args)

    assert isinstance(args, argparse.Namespace)
    if args.verbose:
        print(f"{datetime.datetime.now()} Starting execution", flush=True)

    # Ablation1
    if args.ablation1:
        # Don't bother trimming; library won't be used.
        args.trim_steps = 99999
        print("RUNNING ABLATION1 !!!!!")

    main()

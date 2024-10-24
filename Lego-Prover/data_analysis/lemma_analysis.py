import json
import re
from collections import defaultdict, Counter
import os


LEMMA_REGEX = re.compile(r"useful skill \d+: ######\s*?```isabelle([\s\S]*?)```")
NAME_REGEX = re.compile(r"(?:lemma|theorem)\s+([^:]+?)\s*:")


def extract_lemmas(lego_run: dict) -> list:
    """
    Extract the skills (i.e., lemmas) that were provided as part of the prompt to the prover (i.e., LLM)
    """
    prover_input = lego_run["prover_conversation"]["human"]

    # Remove the problems
    prover_input = prover_input[: prover_input.index("## Problems")]

    assert "useful skill" in prover_input, prover_input
    results = []
    for lemma in LEMMA_REGEX.finditer(prover_input):
        results.append(lemma.group(1).strip())

    return results


def extract_lemma_names(lemma: str) -> list[str]:
    """
    Extract the name of every lemma & theorem in the provided skill (i.e., lemma)
    """
    return [x.group(1) for x in NAME_REGEX.finditer(lemma)]


def print_frequency(dict) -> None:
    """
    Given a mapping from lemmas to the tasks they occur in,
    convert this into a counts of the number of tasks they appear in.

    e.g., 10 lemmas occur in 1 task, 3 lemmas occur in 2 tasks, etc...
    """
    print(json.dumps(Counter(len(x) for x in dict.values()), sort_keys=True, indent=2))


def print_frequency_avg(dict, total) -> None:
    """
    Do the same as print_frequency, but normalize the counts
    by dividing by the provided total.
    """
    freq = Counter(len(x) for x in dict.values())
    keys = sorted(list(freq.keys()))
    print("{")
    for key in keys:
        print(f"\t{key}: {freq[key]}/{total} = {freq[key]/total * 100:.2f}%")
    print("}")


def fmt_proof(proof: str, lemma_names: list[str]) -> str:
    result = proof.split("\n")
    result = [
        f"{x} {'%'*50}" if any(y in x for y in lemma_names) else x for x in result
    ]
    return "\n".join(result)


def summarize_top_n_by_freq(
    save_loc: str,
    filename_prefix: str,
    lego_results: dict,
    lemma_to_task: dict[str, list],
    k: int,
    description: str,
) -> None:
    """
    Print a detailed report about the lemmas appearing in the most solutions.

    save_loc: where to save the report
    filename_prefix: prefix for the report's filename
    lego_results: the full LEGO-Prover log file
    lemma_to_task: dictionary from lemmas to a list of tasks they appear in
    k: the number of lemmas to produce a detailed report for
    description: a description of how `lemma_to_task` was created.
    """

    os.makedirs(save_loc, exist_ok=True)

    lemmas = list(lemma_to_task.keys())
    # Tie break by the string
    lemmas.sort(key=lambda x: (len(lemma_to_task[x]), x), reverse=True)

    lemmas = lemmas[:k]

    for lemma in lemmas:
        # Hope this doesn't produce a conflict
        lemma_names = extract_lemma_names(lemma)

        with open(
            os.path.join(
                save_loc,
                f"{len(lemma_to_task[lemma])}_{filename_prefix}{lemma_names[0]}.md",
            ),
            "w",
        ) as outfile:
            print(f"# {', '.join(lemma_names)}\n", file=outfile)
            print(description, file=outfile)
            print("", file=outfile)
            print(f"Frequency: {len(lemma_to_task[lemma])}", file=outfile)
            print("", file=outfile)
            print(f"Lemma:\n```isabelle\n{lemma}\n```", file=outfile)

            for i, task in enumerate(lemma_to_task[lemma]):
                print(
                    f"\n\n## Usage {i+1} of {len(lemma_to_task[lemma])}:", file=outfile
                )
                print("### Problem:", file=outfile)
                print(f"Task name: `{os.path.split(task)[1]}`\n", file=outfile)
                task_details = [x for x in lego_results if x["task"] == task]
                assert len(task_details) == 1, task_details
                task_details = task_details[0]
                print(f"{task_details['context']['informal_statement']}", file=outfile)
                print("### Informal Proof:", file=outfile)
                print(f"{task_details['context']['informal_proof']}", file=outfile)

                print("### Solution:", file=outfile)
                print(
                    f"```isabelle\n{task_details['context']['formal_statement']}\n```",
                    file=outfile,
                )
                print("AI Generated completion (lemma lines higlighted):", file=outfile)
                print(
                    f"{fmt_proof(task_details['prover_conversation']['ai'], lemma_names=lemma_names)}",
                    file=outfile,
                )


def main(results_path: str):
    results_name = os.path.split(results_path)[1]
    results_name = results_name[: results_name.index(".json")]

    print("===============================")
    print(results_name)

    # Mapping from lemmas to all the tasks for
    # which they appear in the input prompt
    used_in_prompt = defaultdict(lambda: list())

    # Mapping from lemmas to all the tasks in
    # which they are in the LLM output
    used_in_solution = defaultdict(lambda: list())

    # Mapping from lemmas to all the tasks in
    # which their name appears in the LLM output
    name_used_in_solution = defaultdict(lambda: list())

    # Mapping from a lemma to all of the lemma names within
    # (some of the "skills" that the LP identifies actually contain several lemmas)
    sub_lemmas = {}

    with open(results_path, "r") as infile:
        lego_results = json.load(infile)

    tasks_using_lemma_verbatim = set()
    tasks_using_lemma_name = set()

    # Released log files only contain successful tasks, iterate over them
    for succesful_run in lego_results:
        assert succesful_run["success"]
        task = succesful_run["task"]

        # Extract the lemmas in the prover's input prompt
        lemmas = extract_lemmas(succesful_run)

        for lemma in lemmas:
            # Mark that the current lemma was used in this task
            used_in_prompt[lemma].append(task)

            # If lemma appears in the LLM's output, record this information
            if lemma in succesful_run["prover_conversation"]["ai"]:
                used_in_solution[lemma].append(task)
                tasks_using_lemma_verbatim.add(task)

            # If any of the lemma's names appear in the LLM output, record this
            # information
            if any(
                name in succesful_run["prover_conversation"]["ai"]
                for name in extract_lemma_names(lemma)
            ):
                name_used_in_solution[lemma].append(task)
                tasks_using_lemma_name.add(task)

            # Record the names of all Isabelle lemmas within this LEGO-Prover skill (i.e., lemma)
            sub_lemmas[lemma] = extract_lemma_names(lemma)

    # Print the total number of solved problems
    print(f"Total questions solved: {len(lego_results)}")

    # Report the fraction of questions that use a lemma verbatim in the solution
    print(
        f"Questions using a lemma verbatim: {len(tasks_using_lemma_verbatim)}/{len(lego_results)} = {len(tasks_using_lemma_verbatim)/len(lego_results)*100:.2f}%"
    )

    # Report the fraction of questions that use a lemma's name in the solution
    print(
        f"Questions using a lemma name: {len(tasks_using_lemma_name)}/{len(lego_results)} = {len(tasks_using_lemma_name)/len(lego_results) * 100:.2f}%"
    )

    print()
    print(f"Total number lemmas used in at least one prompt: {len(used_in_prompt)}")
    print(
        f"Total number of lemmas appearing verbatim in LLM output: {len(used_in_solution)}"
    )

    print(
        "\nNumber of Lemmas (i.e., skill in prompt) containing $N$ `theorem` or `lemma` statements:"
    )
    print_frequency_avg(sub_lemmas, len(used_in_prompt))

    print(
        "\nNumber of Lemmas used in $N$ tasks (specifically, contained in the task's final prompts to the solver)"
    )
    print_frequency_avg(used_in_prompt, len(used_in_prompt))

    print(
        "\nNumber of Lemma reproduced exactly in $N$ LLM outputs (i.e., $N$ is the number of tasks whose solutions used the Lemma verbatim):"
    )
    print_frequency_avg(used_in_solution, len(used_in_prompt))

    print(
        "\nNumber of Lemmas whose *name* appears in $N$ LLM outputs (i.e., $N$ is the number of tasks whose solutions contained the *name* of the Lemma):"
    )
    print_frequency_avg(name_used_in_solution, len(used_in_prompt))

    # Save a detailed report of the lemmas appearing verbatim in the most solutions
    summarize_top_n_by_freq(
        save_loc=f"data_analysis/{results_name}/exact_match",
        filename_prefix="exact_",
        lego_results=lego_results,
        lemma_to_task=used_in_solution,
        k=5,
        description="Tasks where a provided skill is reproduced verbatim",
    )

    # Save a detailed report of the lemmas whose names appear in in the most solutions
    summarize_top_n_by_freq(
        save_loc=f"data_analysis/{results_name}/name_match",
        filename_prefix="name_",
        lego_results=lego_results,
        lemma_to_task=name_used_in_solution,
        k=5,
        description="Tasks where a provided skill's *name* is reproduced verbatim",
    )


if __name__ == "__main__":
    for input_path in [
        "./result/gpt_informal_valid.json",
        "./result/human_informal_valid.json",
        "./result/gpt_informal_test.json",
        "./result/human_informal_test.json",
    ]:
        main(results_path=input_path)

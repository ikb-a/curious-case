"""
Aggregate information for the non-import elements of the toolbox
based on a provided TroVE checkpoint.
"""

import argparse
import os
import json
from collections import defaultdict
import re


def defined_in_solution(function: dict, sln: str) -> bool:
    name = function["name"]
    sln_list = sln.split("\n")
    sln_list = [
        line
        for line in sln_list  # all([(symbol in line) for symbol in ["def", "(", ")", ":"]])
        if re.search(r"def\s+" + name + r"\s*\(.*\)\s*:", line)
    ]
    # Assert removed b/c TroVE sometimes redefines functions several times
    # assert len(sln_list) <= 1, (function["name"], sln)
    return len(sln_list) >= 1


def in_toolbox(function: dict, toolbox: str) -> bool:
    return re.search(r"\s+" + function["name"] + r"\s*\(.*\)", toolbox) is not None


def imported_in_solution(function: dict, sln: str) -> bool:
    name = function["name"]

    # Remove all imports of the form "from toolbox import ..." because these are not
    # true imports. TroVE is implemented s.t. these imports are not actually executed;
    # instead the code is prepended with the definitions of everything in the toolbox.
    sln_list = sln.split("\n")
    sln_list = [
        x for x in sln_list if re.search(r"from[ \t]+toolbox[ \t]+import", x) is None
    ]
    sln = "\n".join(sln_list)

    return re.search(r"import[^\n]*?[, \t]+" + name + r"[,\s]+", sln) is not None


def format_actions(actions):
    actions = [a for a in actions if a.strip() != ""]
    # TroVE is using the input function from the toolbox, b/c it didn't
    # create, define, or import it, from anywhere else.
    if len(actions) == 0:
        return "REUSE"
    else:
        return " + ".join(actions)


def determine_action_type(log: str, function: dict, sln, start_toolbox, tools) -> str:
    """
    Try to determine whether TroVE is adding a function, editing an
    existing function, or using a funtion from the toolbox.

    The log contains annotations which apply *specifically*
    to the **Tools**" section of the model's response. The **Tools**"
    section is _different_ from the **Solution** section!!!:
        - ADD (function in **Tools** with a name not in the toolbox)
        - EDIT (function in **Tools** already in the toolbox)
        - IMPORT (a python import in **Tools**, other than from the toolbox)

    This information is a first step, but we then need to check the **Solution**
    section, as the model may EDIT the tool *there* as well.

    If a function has none of these annotations, and isn't
    redefined in the solution body, then it was correctly
    reused from the library.

    """

    # Check if a function with the same name (e.g., gcd) was imported from somewhere
    # other than the toolbox.
    imports = ""
    if imported_in_solution(function, sln):
        imports = "IMPORT [sln] "
    if imported_in_solution(function, tools):
        imports = "IMPORT [tools] " if imports == "" else "IMPORT [sln+tools] "

    # Curious, their logging seems inconsistent whether it uses name or signature function['signature']
    tail = f" | {function['name']}"

    log_list = [x for x in log.split("\n") if x.endswith(tail) or f"{tail}(" in x]

    # Rare, but can happen. Sigh.
    # assert len(log_list) <= 1, (tail, log, log_list)

    log_action = ""
    if len(log_list) >= 1:
        if len(log_list) >= 2:
            print(
                f"WARNING! Collapsing the following to just the first entry {log_list}"
            )
            log_list = log_list[:1]

        # Log claims a type of use:
        log = log_list[0]
        log_action = log[: log.find(tail)]
        assert (
            log_action != "IMPORT"
        ), "IMPORT implies a python 1mport statement instead of a function definition; this script shouldn't be processing those."
        assert log_action in ["ADD", "EDIT", "IMPORT"], (log_action, tail, log)
        log_action += " [in tools]"

    # If TroVE defined in **Solution**, then its action is that plus
    # whatever the log_action is (i.e., whatever it did in **Tools**)
    action = ""
    if defined_in_solution(function, sln):
        # if defined_in_solution(
        if in_toolbox(
            function, start_toolbox
        ):  # TroVE overwrote toolbox in **Solution**
            action = "EDIT [in sln]"
        else:  # TroVE created new function
            action = "ADD [in sln]"

    return format_actions([imports, log_action, action])


def end_code_block(code_block):
    if len(re.findall("```", code_block)) % 2 == 0:
        return code_block
    return code_block + "\n```\n**TRUNCATED SLN**\n"


def create_output_line(
    sln, sln_to_actions, function, sln_to_start_toolbox, sln_to_tools_section
):
    tools_section = end_code_block(sln_to_tools_section[sln])
    tools_section = tools_section.split("\n")
    assert "-th Tools**" in tools_section[0]
    tools_section[0] = tools_section[0].strip()[1:-1]
    tools_section = "\n".join(tools_section)

    action_type = determine_action_type(
        sln_to_actions[sln],
        function,
        sln,
        sln_to_start_toolbox[sln],
        sln_to_tools_section[sln],
    )

    incoming_toolbox = ""

    # Problems with action type detection b/c toolbox does not define functions. Sigh.
    # if action_type == "REUSE":
    toolbox_list = sln_to_start_toolbox[sln].replace("```python", "```").split("```")
    toolbox_list = [x.strip() for x in toolbox_list if x.strip() != ""]
    toolbox_list = [
        x
        for x in toolbox_list
        # if re.search(r"def\s+" + function["name"] + r"\s*\(.*\)\s*:", x)
        if function["name"] in x
    ]

    string_toolbox = "\n```\n\n```\n".join(toolbox_list)
    incoming_toolbox = f"\n\n*Incoming Toolbox* (filtered to just the REUSEd tool)\n```\n{string_toolbox}\n```\n"

    return (
        "*"
        + action_type
        + "* "
        + end_code_block(sln)
        + "\n"
        + tools_section
        + incoming_toolbox
    )


def main(args: argparse.Namespace) -> None:
    # Open file and confirm it is of the form preempt_run{run #}.json
    dirname, filename = os.path.split(args.preempt_file)
    assert filename.startswith("preempt_run") and filename.endswith(".json")
    run_idx = int(filename[11:-5])

    with open(args.preempt_file, "r") as infile:
        log = json.load(infile)

    # Get every learned tool that is NOT an import statement
    # (i.e., only get tools that are functions).
    func_library = [
        log["library"][x]
        for x in log["library"]
        if log["library"][x]["type"] != "import"
    ]

    # If the library contains no tools other than import statements,
    # Leave an empty .md file in the folder
    if len(func_library) == 0:
        with open(
            os.path.join(dirname, f"run{run_idx}_func_lib_NOTHING.md"), "w"
        ) as outfile:
            print("The toolbox hath nothing.", file=outfile)
    # Otherwise, proceed with the analysis of the function tools
    else:
        # Map index to solution
        model_slns = defaultdict(lambda: list())

        # Dictionary from solution string to the corresponding actions reported by TroVE (IMPORT, EDIT, or ADD statements)
        sln_to_actions = {}

        # Dictionary from solution string to the corresponding **Tools** section
        # Note!!! **Tools** section of the LLM output is the model's intended place to add or
        # edit tools from the toobox
        # (though it often does so in the **Solution** section anyways)
        sln_to_tools_section = {}

        # Dictionary from solution string to the input toolbox
        # Done this way b/c TroVE can change the toolbox between the SKIP, CREATE, and IMPORT branches
        sln_to_start_toolbox = {}

        # Map from question number to the **Question** section of the log
        questions = {}

        # Index of the question currently under consideration
        curr_idx = None
        # Whether the solution could be executed
        exec_succ = "NO EXEC RES"
        # Current solution under consideration
        exec_sln = None
        # Starting toolbox for this problem
        exec_start_toolbox = None

        # Iterate through the log recorded in the preemption checkpoint
        # Store information on problems, their solutions, whether the solution
        # could be executed, whether the solution was correct, and the
        # starting toolbox
        for line_idx, line in enumerate(log["fw_log"]):
            if line.startswith("## Example "):
                curr_idx = int(line[11 : line.index("\n")])
                questions[curr_idx] = line[line.index("**Question**") :]
                if "**Toolbox**" in questions[curr_idx]:
                    # Record the starting toolbox for this problem
                    exec_start_toolbox = questions[curr_idx][
                        questions[curr_idx].index("**Toolbox**") :
                    ]

                    # Remove the toolbox from the problem definition
                    questions[curr_idx] = questions[curr_idx][
                        : questions[curr_idx].index("**Toolbox**")
                    ]

            elif "**Solution**" in line:
                exec_sln = exec_succ + line
                model_slns[curr_idx].append(exec_sln)
                assert exec_start_toolbox is not None
                sln_to_start_toolbox[exec_sln] = exec_start_toolbox
            elif "th Execution Result**" in line:
                # Model Output:\n```\n1.27\n```\n- Model Answer: [1.27]\n- Annotated Answer(s): 1.25\n- Is Answer Correct: False\n\n
                exec_succ = (
                    ""
                    if line[
                        line.index("Is Answer Correct: ") + len("Is Answer Correct: ") :
                    ].strip()
                    == "True"
                    else "(WRONG) "
                )
            elif "-th Actions**" in line:
                assert exec_sln is not None
                sln_to_actions[exec_sln] = line
            elif "-th Tools**" in line:
                assert exec_sln is not None
                sln_to_tools_section[exec_sln] = line

        # Iterate over each function in the learned library, and create a file
        # Containing statistics about and examples of correct & incorrect
        # usage.
        for function in func_library:
            # Create summary file for this specific function
            with open(
                os.path.join(dirname, f"run{run_idx}_func_lib_{function['name']}.md"),
                "w",
            ) as outfile:
                # Print basic function information and an overview of how
                # TroVE's logs are organized
                print(f"# {function['signature']}", file=outfile)
                print(file=outfile)
                print(
                    "Note: TroVE starts problems with a toolbox, and it *generates* both "
                    "a **Solution** section intended for solution code, and a *Tools* section "
                    "intended for edits to the input toolbox. *Tools* should not be mistaken for "
                    "the toolbox (though it can result in changes being made to the toolbox in "
                    "the future, it is an output)",
                    file=outfile,
                )
                print(file=outfile)
                print(f"- Reported usage freq: {function['frequency']}", file=outfile)

                # Go over every usage of this function that was recorded in TroVE's
                # internal memory (TroVE records this information for use when
                # performing function pruning).
                # Record the following:

                # Total number of solutions for which
                # the function name actually appears in the solution
                # (e.g., TroVE may create a function in the **Tools** section,
                # and then fail to actually use it in the solution)
                true_uses = 0

                # Total number of solutions for which the
                # function name appears in the solution, and the solution
                # correctly answers the question
                true_correct_uses = 0

                # Considering only the solutions that are correct, and that
                # contain the function of interest, count the number of times
                # the function is introduced by:
                #   - ADD (the function was created in this solution)
                #   - EDIT (the function was defined again despite already being in the toolbox)
                #   - IMPORT (a function with the same name was imported, other than from the toolbox)
                #   - REUSE (correct reuse of a function in the toolbox -- i.e, none of the above)
                true_correct_uses_types = defaultdict(lambda: 0)
                wrong_uses_types = defaultdict(lambda: 0)

                # Examples of true usage of the function (regardless of
                # whether the solution is correct)
                true_uses_examples = []

                # Iterate over every problem index that TroVE
                # considered to be a usage of the function
                alleged_indices = function["indices"]
                for alleged_idx in alleged_indices:
                    used = False
                    used_in_correct = False
                    # Examples of true usage of the function
                    code = []

                    # Consider the various solutions
                    # TroVE generated for this problem
                    for sln in model_slns[alleged_idx]:
                        if function["name"] in sln:
                            used = True
                            code.append(
                                create_output_line(
                                    sln,
                                    sln_to_actions,
                                    function,
                                    sln_to_start_toolbox,
                                    sln_to_tools_section,
                                )
                            )
                            if "(WRONG)" not in sln:
                                used_in_correct = True
                                true_correct_uses_types[
                                    determine_action_type(
                                        sln_to_actions[sln],
                                        function,
                                        sln,
                                        sln_to_start_toolbox[sln],
                                        sln_to_tools_section[sln],
                                    )
                                ] += 1
                            else:
                                wrong_uses_types[
                                    determine_action_type(
                                        sln_to_actions[sln],
                                        function,
                                        sln,
                                        sln_to_start_toolbox[sln],
                                        sln_to_tools_section[sln],
                                    )
                                ] += 1
                    if len(code) != 0:
                        true_uses_examples += [
                            f"## Example Idx {alleged_idx}",
                            f"{questions[alleged_idx]}",
                        ] + code
                        # print(questions[alleged_idx])

                    true_uses += used
                    true_correct_uses += used_in_correct

                # Report the total number of times the function was used in a generated solution
                print(
                    f"- True usage freq: {true_uses}",
                    file=outfile,
                )

                # Filter the above to only include correct solutions
                print(
                    f"- True usage freq in correct sln: {true_correct_uses}",
                    file=outfile,
                )

                # Print function being processed
                print(f"Function processed\n{function['name']}\n-------------------")

                # Report how the function was used in correct solutions
                print(
                    f"- True usage freq in correct sln by type (IMPORT, EDIT, or ADD): \n{json.dumps(true_correct_uses_types, sort_keys=True, indent=2)}",
                    file=outfile,
                )
                print(file=outfile)

                # Report how the function was used in wrong solutions
                print(
                    f"- True usage freq in incorrect sln by type: \n{json.dumps(wrong_uses_types, sort_keys=True, indent=2)}",
                    file=outfile,
                )

                print(
                    f"\n\nNOTE: By 'True usage freq' we mean that the function was both imported *and* the function name appears in the body of the solution",
                    file=outfile,
                )

                # Print the body of the function
                # NOTE: TroVE edits its library over time, it's
                # possibe that the function may have been redefined
                # in the library during execution
                print(file=outfile)
                print("```python", file=outfile)
                print(function["function"], file=outfile)
                print("```\n", file=outfile)
                print(file=outfile)
                print(file=outfile)

                # print(true_uses_examples)

                # Print all examples where the function was correctly used
                print("# Correct Usages: ", file=outfile)
                filtered_usage_examples = [
                    x for x in true_uses_examples if "(WRONG)" not in x
                ]
                FOUND_TRUTH = False
                for curr_idx in list(range(0, len(filtered_usage_examples)))[::-1]:
                    curr_line = filtered_usage_examples[curr_idx]
                    if (
                        "Example Idx" not in curr_line
                        and "**Question**" not in curr_line
                    ):
                        FOUND_TRUTH = True  # This is a correct solution
                    elif FOUND_TRUTH and "Example Idx" in curr_line:
                        FOUND_TRUTH = (
                            False  # Need to find solution for the next example
                        )
                    elif not FOUND_TRUTH and "Example Idx" in curr_line:
                        filtered_usage_examples.pop(curr_idx)
                        while (
                            curr_idx < len(filtered_usage_examples)
                            and "Example Idx" not in filtered_usage_examples[curr_idx]
                        ):
                            filtered_usage_examples.pop(curr_idx)

                print(
                    "\n".join(filtered_usage_examples),
                    file=outfile,
                )

                # Print examples of where the function was incorrectly used.
                # If there are more than 250 examples of incorrect usage, then
                # Report only 250 and put the rest into a second file.
                print("# Incorrect Usages: ", file=outfile)
                wrong_examples = [
                    x
                    for x in true_uses_examples
                    if "(WRONG)" in x or "Example Idx" in x or "**Question**" in x
                ]

                LIMIT = 250
                if len(wrong_examples) < LIMIT:
                    print(
                        "\n".join(wrong_examples),
                        file=outfile,
                    )
                else:
                    print(
                        f"TRUNCATED TO FIRST {LIMIT} LINES of {len(wrong_examples)} ONLY FOR READABILITY, SEE SUPPLEMENTARY FILE\n\n",
                        file=outfile,
                    )
                    print(
                        "\n".join(wrong_examples[:LIMIT]),
                        file=outfile,
                    )
                    with open(
                        os.path.join(
                            dirname,
                            f"run{run_idx}_func_lib_{function['name']}_supplemental.md",
                        ),
                        "w",
                    ) as outfile_sup:
                        print("# Incorrect Usages: ", file=outfile_sup)
                        print(
                            "\n".join(wrong_examples),
                            file=outfile_sup,
                        )


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "preempt_file", type=str, help="Path to the preempt file to process"
    )
    main(parser.parse_args())

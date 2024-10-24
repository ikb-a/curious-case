"""
Simple script that goes through log files, and truncate's any program
output that exceeds 1000 characters. 
Otherwise, log files in excess of 2GB exist.
"""

import os
import json
import re
from typing import List


def truncate_match(match, prefix, suffix):
    if len(match.group(1)) > 1100:
        return f"{prefix}{match.group(1)[:500]}\n\n[TRUNCATED TO 1000 CHARS FOR SPACE]\n\n{match.group(1)[-500:]}{suffix}"
    else:
        return match.group(0)


def truncate_preempt_log(log: List[str]) -> List[str]:
    log = [
        re.sub(
            r"Model Output:([\s\S]*?)- Model Answer",
            lambda y: truncate_match(
                match=y, prefix="Model Output:", suffix="- Model Answer"
            ),
            x,
        )
        for x in log
    ]
    return [
        re.sub(
            r"Model Answer:([\s\S]*?)- Annotated Answer",
            lambda y: truncate_match(
                match=y, prefix="Model Answer:", suffix="- Annotated Answer"
            ),
            x,
        )
        for x in log
    ]


def clean_result_list(result_list):
    """
    Store model response as None if it is too long.
    """

    def redact(x):
        if (
            x["response"]["exec_output"] is not None
            and len(x["response"]["exec_output"]) > 1000
        ):
            x["response"]["exec_output"] = None
            x["response"]["model_answers"] = None
        return x

    return [redact(x) for x in result_list]


if __name__ == "__main__":
    for dirroot, _, filenames in os.walk("."):
        for filename in filenames:
            if filename.startswith("preempt_run") and filename.endswith(".json"):
                print(os.path.join(dirroot, filename))
                with open(os.path.join(dirroot, filename), "r") as infile:
                    data = json.load(infile)
                    data["fw_log"] = truncate_preempt_log(data["fw_log"])
                    data["result_list"] = clean_result_list(data["result_list"])
                with open(os.path.join(dirroot, filename), "w") as outfile:
                    json.dump(data, outfile, indent=2, sort_keys=True)

            if (
                "results/Noneex/trove" in dirroot
                and filename.startswith("run")
                and filename.endswith(".json")
            ):
                print(os.path.join(dirroot, filename))
                with open(os.path.join(dirroot, filename), "r") as infile:
                    data = json.load(infile)
                data = clean_result_list(data)
                with open(os.path.join(dirroot, filename), "w") as outfile:
                    data = json.dump(data, outfile)

            if (
                "log/Noneex/trove" in dirroot
                and filename.startswith("run")
                and filename.endswith(".md")
            ):
                print(os.path.join(dirroot, filename))
                with open(os.path.join(dirroot, filename), "r") as infile:
                    data = infile.read()
                data = truncate_preempt_log([data])
                with open(os.path.join(dirroot, filename), "w") as outfile:
                    print(data[0], file=outfile, end="")

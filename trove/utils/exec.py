"""Program Execution Utilities."""

import subprocess
import os
import traceback


def execute_code_wrapped(
    code_pieces: list[str],
    exec_file: str = "tmp_exec.py",
    timeout: int = 100,
    verbose=False,
) -> tuple[bool, str]:

    # write all code pieces into a file
    with open(exec_file, "w") as fw:
        fw.write("\n\n".join(code_pieces))

    try:
        prev_paths = (
            os.environ["PYTHONPATH"]
            if "PYTHONPATH" in os.environ
            else os.environ["PATH"]
        )

        new_env_vars = os.environ.copy()
        new_env_vars["PYTHONPATH"] = f"{prev_paths}:."

        # execute code file
        result = subprocess.run(
            ["python", exec_file],
            capture_output=True,
            check=False,
            text=True,
            timeout=timeout,
            env=new_env_vars,
        )
    except subprocess.TimeoutExpired:
        return False, "Timeout detected in running subprocess"
    except Exception as e:
        if verbose:
            traceback.print_exc()
        return False, f"Unknown error in running subprocess ({e})"

    if result.returncode != 0:  # execution failed
        error_msgs = result.stderr.strip().split("\n")
        new_msgs, want_next = [], False
        for em in error_msgs:
            # if "Traceback" in em:
            #    new_msgs.append(em)
            if em == error_msgs[-1]:
                new_msgs.append(em)
            elif exec_file in em:
                """
                if "/" in em:
                    s = em.index('"/') + 1
                    e = em.index(f"/{exec_file}") + 1
                    em = em.replace(em[s:e], "")
                """
                new_msgs.append(em)
                want_next = True
            elif want_next:
                new_msgs.append(em)
                want_next = False
        error_msg = "\n".join(new_msgs).strip()
        return False, error_msg
    else:  # execution success
        output = result.stdout.strip()
        return True, output

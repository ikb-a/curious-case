
if [ -z $SINGULARITY_CONTAINER ]
then
    echo "Aborting! Not in a singularity shell!"
else
    EXEC_FILE_NAME="${1//'/'/'-'}"
    TASK_NAME="${1}"
    shift

    source /initiatives/env/bin/activate &&
    cd /initiatives/tool_creation/source/trove &&
    echo python run_trove.py --task_name "$TASK_NAME" --exec_file "${OUTPUT_FOLDER}/tmp_exec_${EXEC_FILE_NAME}`date -Ins`.py" "$@"
    python run_trove.py --task_name "$TASK_NAME" --exec_file "${OUTPUT_FOLDER}/tmp_exec_${EXEC_FILE_NAME}`date -Ins`.py" "$@"

    # Note: --exec_file is the tmp file where python code is saved before execution
fi

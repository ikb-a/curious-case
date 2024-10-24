#!/bin/bash


# =============================================================
# Modify these variables for your system
# =============================================================

# Each run must have a unique index; otherwise it will attempt
# to resume from the pre-existing run.
RUN_IDX=999
# This name will be used for the subfolder containing the
# experiment results.
EXPERIMENT_NAME="ablat_run${RUN_IDX}"
# Path to directory containing the top level `trove` folder
# (i.e., the path to the parent of the folder containing this file). 
# This will be mounted read-only by TroVE.
SOURCE_FOLDER='/anonymized/initiatives/tool_creation/source/'
# Path to the directory in which results will be saved
# This will be mounted read/write by TroVE, so the contents could be
# altered, deleted, or otherwise compromised by the LLM-gnerated code that 
# TroVE executes.
OUTPUT_FOLDER='/anonymized/initiatives/tool_creation/out/'

# The dataset to run:
# Possible values for are DS_NAME: 
# ("math/algebra" "math/counting" "math/geometry" "math/intermediate" "math/number" "math/prealgebra" "math/precalculus" "tabmwp" "wtq" "hitab" "gqa")
DSNAME="math/intermediate"


# =============================================================
# Singularity environment setup. This is static.
# =============================================================

# The script to run is an argument, defaults to 'exec_trove.sh' if not provided.


# Thess paths are **inside** of singularity and should not be edited
# Where the source code folder gets mounted to within singularity
export SINGULARITYENV_EXPHOME='/initiatives/tool_creation/source/trove/'
# Where the output folder gets mounted to within singularity
DEST_OUTPUT_FOLDER='/initiatives/tool_creation/out'

# Either retrieve the huggingface home, or set it to its default value
HF_HOME=${HF_HOME-'~/.cache/huggingface'}

# Image name
CONTAINER="trove_sing_v4.sif" # Singularity container, with anthropic



# Set environment variables to be passed into singularity
# Note that the --env flag does *not* work due to the --cleanenv flag
export SINGULARITYENV_HF_HOME="/hf_cache"   # Set huggingface cache mount location
export SINGULARITYENV_TRANSFORMERS_OFFLINE=1 # Set huggingface to offline mode
export SINGULARITYENV_OUTPUT_FOLDER="${DEST_OUTPUT_FOLDER}/trove/${EXPERIMENT_NAME}/"  # Set where TroVE will save files
mkdir -p "${OUTPUT_FOLDER}trove/${EXPERIMENT_NAME}/"  # Create the save directory if it does not already exist

# =============================================================
# Run TroVE from within singularity.
# =============================================================

MODEL_NAME="codellama/${MODEL_NAME}-${MODEL_VARIANT}"

# Force execution to continue should singularity screw up
set +e

singularity exec \
    `# Need to access VectorInference, so remove disabling of network` \
    `# --net --network none ` \
    `# Limit filesystem access` \
    --contain \
    `# No env variables inherited` \
    --cleanenv \
    `# Try to access GPUs` \
    --nv \
    `# read-only mounting of code to run` \
    --bind  "${SOURCE_FOLDER}:/initiatives/tool_creation/source:ro" \
    --bind "${OUTPUT_FOLDER}:${DEST_OUTPUT_FOLDER}:rw" \
    `# read-only mounting of HF models to load` \
    --bind "${HF_HOME}:${SINGULARITYENV_HF_HOME}:ro" \
    `# Path to singularity container` \
    "${CONTAINER}" \
    bash -c ". ${SINGULARITYENV_EXPHOME}_helper_exec_trove_min.sh ${DSNAME}  --verbose --preemptable --preemption_log_freq 12 --model_name ${MODEL_NAME}  --run_index ${RUN_IDX} --ablation1 &>> ${SINGULARITYENV_OUTPUT_FOLDER}/run${RUN_IDX}_dataset_math_inter.out"

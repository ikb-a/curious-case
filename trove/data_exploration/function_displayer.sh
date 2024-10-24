#!/bin/bash

# TroVE's default logs make it difficult to gauge function reuse. 
# This script aggregates information for non-import element of the toolbox

# Cleanup existing files:
find "${1-./ablation_experiment_results/baseline_run0}" -name "*_func_lib_*.md" -delete

# Run extraction:
for PREFILE in `find ${1-./ablation_experiment_results/baseline_run0} -name "preempt_run*.json"`
do 
echo '======================================'
echo $PREFILE
python3 data_exploration/function_displayer.py "${PREFILE}"
done

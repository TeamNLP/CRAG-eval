#!/bin/bash

evaluation_model_name="gpt-4o-2024-05-13" #`gpt-4o-2024-05-13`, `gpt-4-0125-preview`, or `gpt-3.5-turbo-0125`

for target_model_name in "meta-llama/Meta-Llama-3-8B-Instruct" "meta-llama/Meta-Llama-3-70B-Instruct"; do
    python evaluation.py \
        --dataset_path ms_marco.jsonl \
        --evaluation_model_name ${evaluation_model_name} \
        --target_model_name ${target_model_name} \
        --output_path result
done
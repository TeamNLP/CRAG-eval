#!/bin/bash
cd ..

target_model_list=( "meta-llama/Meta-Llama-3-8B-Instruct" "meta-llama/Meta-Llama-3-70B-Instruct" )

for target_model_name in ${target_model_list[@]}; do
    python ./evaluation.py \
        --dataset_path ./ms_marco.jsonl \
        --evaluation_model_name gpt-3.5-turbo-0125 \
        --target_model_name ${target_model_name} \
        --output_path ./result
done
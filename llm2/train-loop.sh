# python train_clm_no_trainer.py \
#     --model_name_or_path gpt2 \
#     --dataset_name wikitext \
#     --dataset_config_name wikitext-2-raw-v1 \
#     --per_device_train_batch_size 8 \
#     --per_device_eval_batch_size 8 \
#     --cache_dir /cstor/mendeza/hf_test \
#     --output_dir /cstor/mendeza/hf_output/ \
#     --overwrite_output_dir \
python train_clm_no_trainer.py \
    --dataset_name wikitext \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 4 \
    --dataset_config_name wikitext-2-raw-v1 \
    --model_name_or_path gpt2 \
    --output_dir cstor/mendeza/hf_output/ \
    --low_cpu_mem_usage
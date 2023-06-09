accelerate launch --gpu_ids='all'  train_clm.py \
    --model_name_or_path gpt2 \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --per_device_train_batch_size 8 \
    --per_device_eval_batch_size 8 \
    --do_train \
    --cache_dir /cstor/mendeza/hf_test \
    --do_eval \
    --output_dir /cstor/mendeza/hf_output/ \
    --overwrite_output_dir 
    # "/cstor/coreystaten/data/hackathon/data/*/*_all_narratives.csv"
# accelerate launch --gpu_ids='all' train_clm.py \
#     --model_name_or_path gpt2 \
#     --train_file "/cstor/coreystaten/data/hackathon/data/*/*_all_narratives.csv" \
#     --validation_file "/cstor/coreystaten/data/hackathon/data/*/*_all_narratives.csv" \
#     --dataset_name csv \
#     --per_device_train_batch_size 8 \
#     --per_device_eval_batch_size 8 \
#     --do_train \
#     --cache_dir /cstor/mendeza/hf_test \
#     --do_eval \
#     --output_dir /cstor/mendeza/hf_output/ \
#     --overwrite_output_dir 
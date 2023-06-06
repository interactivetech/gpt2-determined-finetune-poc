python run_clmm.py   --cache_dir /cstor/mendeza/hf_test/   --dataset_name wikitext   --dataset_config_name wikitext-2-v1   --model_name_or_path mosaicml/mpt-7b   --torch_dtype=bfloat16   --tokenizer_name EleutherAI/gpt-neox-20b   --bf16   --output_dir /cstor/mendeza/hf_outputs2/   --remove_unused_columns False   --do_train   --do_eval   --max_steps 100   --per_device_train_batch_size 1   --per_device_eval_batch_size 1   --logging_strategy steps   --logging_steps 10   --evaluation_strategy steps   --eval_steps 10   --save_total_limit 3   --seed 133   --save_strategy steps   --save_steps 20   --streaming --low_cpu_mem_usage
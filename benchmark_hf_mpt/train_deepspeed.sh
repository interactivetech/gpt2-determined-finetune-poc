NGPUS=2
HF_PATH=/run/determined/workdir/gpt2-determined-finetune-poc/benchmark_hf_mpt/
MODEL_NAME='mosaicml/mpt-7b'
MODEL_TYPE='mpt'
OUTPUT_DIR=/run/determined/workdir/hf_output/
MAX_STEPS=1000
PER_DEVICE_TRAIN_BATCH_SIZE=8
NEPOCHS=3
NNODES=1

deepspeed --num_nodes=$NNODES --num_gpus=$NGPUS run_clm.py  \
    --model_name_or_path $MODEL_NAME \
    --cache_dir /run/determined/workdir/hf_cache/ \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --do_train \
    --fp16 \
    --torch_dtype float16 \
    --per_device_train_batch_size $PER_DEVICE_TRAIN_BATCH_SIZE \
    --learning_rate 2e-5 \
    --num_train_epochs $NEPOCHS \
    --output_dir $OUTPUT_DIR \
    --overwrite_output_dir \
    --save_steps 0 \
    --max_steps $MAX_STEPS \
    --save_strategy "no" \
    --low_cpu_mem_usage \
    --deepspeed stage_22_cg_false.json
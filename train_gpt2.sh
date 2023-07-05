pushd /home/ptxla/transformers_jonb

set -o xtrace

EXTRA_FLAGS=( $EXTRA_FLAGS )

python \
  examples/pytorch/language-modeling/run_clm.py \
  --tokenizer_name gpt2 \
  --dataset_name wikitext \
  --dataset_config_name wikitext-2-raw-v1 \
  --per_device_train_batch_size $BATCH_SIZE \
  --per_device_eval_batch_size 8 \
  --num_train_epochs $NUM_EPOCH \
  --do_train \
  --output_dir /tmp/output \
  --overwrite_output_dir \
  --config_name /tmp/home/config.json \
  --save_strategy no --logging_strategy no \
  --remove_unused_columns no \
  ${EXTRA_FLAGS[@]}

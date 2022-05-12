WANDB_PROJECT=PlantBERT_MLM_128 python ./run_mlm.py \
    --report_to wandb \
    --run_name BERT_BPE_REGULARIZED \
    --do_train \
    --train_fasta_path ../../data/mlm/genomes/all.contigs.fa.gz \
    --do_eval \
    --validation_file ../../data/mlm/windows/val/128/64/seqs.txt \
    --line_by_line True \
    --window_size 128 \
    --model_type bert \
    --learning_rate 6e-4 \
    --save_strategy steps \
    --save_steps 20000 \
    --max_steps 200000 \
    --evaluation_strategy steps \
    --eval_steps 10000 \
    --dataloader_num_workers 8 \
    --preprocessing_num_workers 8 \
    --warmup_steps 20000 \
    --logging_steps 10000 \
    --save_total_limit 10 \
    --output_dir results_128_bert_bpe_regularized \
    --tokenizer_name ../../data/mlm/tokenizer_bpe_1024_v10 \
    --config_overrides vocab_size=1024,pad_token_id=1 \
    --per_device_train_batch_size 512 \
    --per_device_eval_batch_size 512 \
    --gradient_accumulation_steps 1 \
    --fp16 \
    --weight_decay 0.01 \
    --optim adamw_torch \
    --adam_epsilon 1e-4 \
    --seed 42 \
    --prediction_loss_only True \
    --overwrite_cache True \
    --pad_to_max_length True \
    --max_seq_length 44 \
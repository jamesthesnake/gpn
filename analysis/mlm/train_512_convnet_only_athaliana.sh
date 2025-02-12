WANDB_PROJECT=PlantBERT_MLM_512 python ./run_mlm_custom.py \
    --report_to wandb \
    --run_name ConvNet_only_athaliana \
    --do_train \
    --do_eval \
    --train_fasta_path ../../data/mlm/dataset/train/Arabidopsis_thaliana.train.parquet \
    --validation_file ../../data/mlm/dataset/test/Arabidopsis_thaliana.test.512.256.parquet \
    --model_type ConvNet \
    --config_overrides vocab_size=6 \
    --line_by_line True \
    --window_size 512 \
    --learning_rate 1e-3 \
    --save_strategy steps \
    --save_steps 100000 \
    --max_steps 2000000 \
    --evaluation_strategy steps \
    --eval_steps 100000 \
    --dataloader_num_workers 8 \
    --preprocessing_num_workers 8 \
    --warmup_steps 10000 \
    --logging_steps 100000 \
    --output_dir results_512_convnet_only_athaliana \
    --tokenizer_name ../../data/mlm/tokenizer_bare \
    --per_device_train_batch_size 250 \
    --per_device_eval_batch_size 250 \
    --gradient_accumulation_steps 1 \
    --fp16 \
    --weight_decay 0.01 \
    --optim adamw_torch \
    --adam_epsilon 1e-4 \
    --seed 49 \
    --prediction_loss_only True \
    --lr_scheduler_type constant_with_warmup \
    --resume_from_checkpoint ./results_512_convnet_only_athaliana/checkpoint-1300000 \
    --ignore_data_skip \
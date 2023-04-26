set_n_least_used_CUDA_VISIBLE_DEVICES 4

# CUDA_VISIBLE_DEVICES=4,5,6,7 torchrun --master_port 29500 --nproc_per_node=4 \
#              train_reward_model.py --pretrain '/data/scratch/alpaca-7B' \
#                              --model 'bloom' \
#                              --strategy colossalai_zero2 \
#                              --loss_fn 'log_exp'\
#                              --save_path '/home/lczht/data2/Coati/examples/rm_bloomz_1b7.pt' \
#                              --dataset 'Anthropic/hh-rlhf'\
#                              --subset 'harmless-base'\
#                              --test True

CUDA_VISIBLE_DEVICES=4,5,6,7 torchrun --master_port 29500 --nproc_per_node=4 \
             train_reward_model.py --pretrain  /data/scratch/alpaca-7B \
                             --model 'llama' \
                             --strategy colossalai_zero2 \
                             --loss_fn 'log_sig'\
                             --save_path '/home/lczht/data2/Coati/examples/llama7b2.pt' \
                             --dataset 'Anthropic/hh-rlhf'\
                            #  --test True \
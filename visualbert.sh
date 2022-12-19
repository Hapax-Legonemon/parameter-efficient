
# HMD-FC Training
# In the visual_bert
mmf_run config=projects/visual_bert/configs/hateful_memes/from_coco.yaml \
model=visual_bert \
dataset=hateful_memes \
training.batch_size=16 \
run_type=train_val \
model_config.visual_bert.freeze_base=True \
training.wandb.enabled=True \
env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/HMD_FC" \
training.wandb.project=VisualBERT \
training.num_workers=0 \
training.max_updates=22000 \
training.experiment_name=HMD_FC
rm -r /home/smart/mmf/mmf/Exp/VisualBERT/HMD_FC/models

# HMD-FC Training
mmf_run config=projects/visual_bert/configs/hateful_memes/from_coco.yaml \
model=visual_bert \
dataset=hateful_memes \
training.batch_size=16 \
run_type=train_val \
model_config.visual_bert.freeze_base=True \
training.wandb.enabled=True \
env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/HMD_FC" \
training.wandb.project=VisualBERT \
training.num_workers=0 \
training.max_updates=22000 \
training.experiment_name=HMD_FC
rm -r /home/smart/mmf/mmf/Exp/VisualBERT/HMD_FC/models





# mmf_run config=projects/visual_bert/configs/mmh/from_coco.yaml \
# model=visual_bert \
# dataset=mmh \
# training.batch_size=16 \
# run_type=train_val \
# model_config.visual_bert.freeze_base=True \
# training.wandb.enabled=True \
# env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/mmh_a" \
# training.wandb.project=VisualBERT_ \
# training.max_updates=22000 \
# training.num_workers=0 \
# training.persistent_workers=False \
# training.experiment_name=mmh_a
# # checkpoint.resume_pretrained=True 
# # checkpoint.resume_file="home/smart/mmf/mmf/unsee/VisualBERT/adapt_mmh_image/visual_bert_final.pth"
# rm -r /home/smart/mmf/mmf/Exp/VisualBERT/mmh_a/models


# mmf_run config=projects/visual_bert/configs/mmh/from_coco.yaml \
# model=visual_bert \
# dataset=mmh \
# training.batch_size=16 \
# run_type=train_val \
# model_config.visual_bert.freeze_base=False \
# training.wandb.enabled=True \
# env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/mmh-ft" \
# training.wandb.project=VisualBERT \
# training.max_updates=22000 \
# training.num_workers=0 \
# training.experiment_name=mmh-ft
# # Carrega pesos do adaptador e salva em arquivo ...
# # checkpoint.resume_pretrained=True \
# # checkpoint.resume_file="home/smart/mmf/mmf/unsee/VisualBERT/adapt_mmh_image/visual_bert_final.pth"
# rm -r /home/smart/mmf/mmf/Exp/VisualBERT/mmh-ft/models

mmf_run config=projects/visual_bert/configs/hateful_memes/from_coco.yaml \
model=visual_bert \
dataset=hateful_memes \
training.batch_size=16 \
run_type=train_val \
model_config.visual_bert.freeze_base=True \
training.wandb.enabled=True \
env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/hmd_a" \
training.wandb.project=VisualBERT_ \
training.num_workers=0 \
training.max_updates=22000 \
training.experiment_name=hmd_a
# Carrega pesos do adaptador e salva em arquivo ...
# checkpoint.resume_pretrained=True \
# checkpoint.resume_file="home/smart/mmf/mmf/unsee/VisualBERT/adapt_mmh_image/visual_bert_final.pth"
rm -r /home/smart/mmf/mmf/Exp/VisualBERT/hmd_a/models


# mmf_run config=projects/visual_bert/configs/hateful_memes/from_coco.yaml \
# model=visual_bert \
# dataset=hateful_memes \
# training.batch_size=4 \
# run_type=train_val \
# model_config.visual_bert.freeze_base=False \
# training.wandb.enabled=True \
# env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/hmd-ft" \
# training.wandb.project=VisualBERT \
# training.num_workers=0 \
# training.max_updates=22000 \
# training.experiment_name=hmd-ft
# # Carrega pesos do adaptador e salva em arquivo ...
# # checkpoint.resume_pretrained=True \
# # checkpoint.resume_file="home/smart/mmf/mmf/unsee/VisualBERT/adapt_mmh_image/visual_bert_final.pth"
# rm -r /home/smart/mmf/mmf/Exp/VisualBERT/hmd-ft/models




# mmf_run config=projects/visual_bert/configs/senticap/from_coco.yaml \
# model=visual_bert \
# dataset=senticap \
# training.batch_size=16 \
# run_type=train_val \
# model_config.visual_bert.freeze_base=True \
# training.wandb.enabled=True \
# env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/senticap_a10" \
# training.wandb.project=VisualBERT \
# training.num_workers=0 \
# training.max_updates=22000 \
# training.experiment_name=senticap_a10
# # Carrega pesos do adaptador e salva em arquivo ...
# # checkpoint.resume_pretrained=True \
# # checkpoint.resume_file="home/smart/mmf/mmf/unsee/VisualBERT/adapt_mmh_image/visual_bert_final.pth"
# rm -r /home/smart/mmf/mmf/Exp/VisualBERT/senticap_a10/models


# mmf_run config=projects/visual_bert/configs/senticap/from_coco.yaml \
# model=visual_bert \
# dataset=senticap \
# training.batch_size=16 \
# run_type=train_val \
# model_config.visual_bert.freeze_base=False \
# training.wandb.enabled=True \
# env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/senticap-ft" \
# training.wandb.project=VisualBERT \
# training.num_workers=0 \
# training.max_updates=22000 \
# training.experiment_name=senticap-ft
# # Carrega pesos do adaptador e salva em arquivo ...
# # checkpoint.resume_pretrained=True \
# # checkpoint.resume_file="home/smart/mmf/mmf/unsee/VisualBERT/adapt_mmh_image/visual_bert_final.pth"
# rm -r /home/smart/mmf/mmf/Exp/VisualBERT/senticap-ft/models

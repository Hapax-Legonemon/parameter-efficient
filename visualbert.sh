
# HMD-FC Training
# In the visual_bert.py, put adapt = False


mmf_run config=projects/visual_bert/configs/hateful_memes/from_coco.yaml \
model=visual_bert \
dataset=hateful_memes \
training.batch_size=16 \
run_type=train_val \
model_config.visual_bert.freeze_base=True \
training.wandb.enabled=True \
env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/HMD-FC" \
training.wandb.project=VisualBERT \
training.num_workers=0 \
training.max_updates=22000 \
training.experiment_name=HMD-FC



# HMD-PE Training
# In the visual_bert.py, put adapt = True

mmf_run config=projects/visual_bert/configs/hateful_memes/from_coco.yaml \
model=visual_bert \
dataset=hateful_memes \
training.batch_size=16 \
run_type=train_val \
model_config.visual_bert.freeze_base=True \
training.wandb.enabled=True \
env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/HMD_PE" \
training.wandb.project=VisualBERT \
training.num_workers=0 \
training.max_updates=22000 \
training.experiment_name=HMD-PE



# HMD-Full-FT Training
# In the visual_bert.py, put adapt = False
# This "model_config.visual bert.freeze base=False", unfreeze all weights


mmf_run config=projects/visual_bert/configs/hateful_memes/from_coco.yaml \
model=visual_bert \
dataset=hateful_memes \
training.batch_size=16 \
run_type=train_val \
model_config.visual_bert.freeze_base=False \
training.wandb.enabled=True \
env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/HMD-Full-FT" \
training.wandb.project=VisualBERT \
training.num_workers=0 \
training.max_updates=22000 \
training.experiment_name=HMD-Full-FT





# MMH-FC Training
# In the visual_bert.py, put adapt = False


mmf_run config=projects/visual_bert/configs/mmh/from_coco.yaml \
model=visual_bert \
dataset=mmh \
training.batch_size=16 \
run_type=train_val \
model_config.visual_bert.freeze_base=True \
training.wandb.enabled=True \
env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/MMH-FC" \
training.wandb.project=VisualBERT \
training.num_workers=0 \
training.max_updates=22000 \
training.experiment_name=MMH-FC



# MMH-PE Training
# In the visual_bert.py, put adapt = True


mmf_run config=projects/visual_bert/configs/mmh/from_coco.yaml \
model=visual_bert \
dataset=mmh \
training.batch_size=16 \
run_type=train_val \
model_config.visual_bert.freeze_base=True \
training.wandb.enabled=True \
env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/MMH-PE" \
training.wandb.project=VisualBERT \
training.num_workers=0 \
training.max_updates=22000 \
training.experiment_name=MMH-PE


# MMH-Full-FT Training
# In the visual_bert.py, put adapt = False
# This "model_config.visual bert.freeze base=False", unfreeze all weights


mmf_run config=projects/visual_bert/configs/mmh/from_coco.yaml \
model=visual_bert \
dataset=mmh \
training.batch_size=16 \
run_type=train_val \
model_config.visual_bert.freeze_base=False \
training.wandb.enabled=True \
env.save_dir="/home/smart/mmf/mmf/Exp/VisualBERT/MMH-Full-FT" \
training.wandb.project=VisualBERT \
training.num_workers=0 \
training.max_updates=22000 \
training.experiment_name=MMH-Full-FT







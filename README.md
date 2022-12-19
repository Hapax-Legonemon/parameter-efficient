# parameter-efficient
This repository has the experiments log from the paper -Parameter-Efficient Fine Tuning for Multimodal Hate Speech Detection in Memes
## Wellcome
In this repository you will find the necessary information to replicate the experiments carried out in the paper. We split the information in the following order:


*  Environment of the experiments.
*  Datasets.
*  Model.
*  Hardware used.
*  Training logs.

## Environment of the experiments


![image](https://user-images.githubusercontent.com/120152766/208425337-8a11f73b-413b-421c-b988-84dd44bad8e9.png)
All experiments were performed with the MMF, that is a modular framework for supercharging vision and language research built on top of PyTorch. Using MMF, researchers and devlopers can train custom models for VQA, Image Captioning, Visual Dialog, Hate Detection and other vision and language tasks.

The necessary information for installing and configuring this framework can be found at this link https://mmf.sh/docs.


## Datasets
Two datasets were used during the experiments, the first was HMD, which is already integrated into the framework. The second MMH dataset, not part of the framework, had to be integrated. More details about this process found in https://mmf.sh/docs/tutorials/dataset.

### Datasets downloads:

* HMD dataset can be downloaded from https://hatefulmemeschallenge.com/.
* MMH dataset can be downloaded from https://www.kaggle.com/datasets/victorcallejasf/multimodal-hate-speech.


## Model

![image](https://user-images.githubusercontent.com/120152766/208430966-1b6de459-18fc-404c-8eac-69573d250ca1.png)

More detail about models check the link https://mmf.sh/docs/notes/model_zoo


### How include parameter-efficient block in the VisualBERT model?
To include the PE blocks in the VisualBERT model, follow the sequence below:

* After install MMF, go to folder /home/youruser/anaconda3/envs/mmf/lib/python3.7/site-packages/transformers/models/bert, and change the file modeling_bert.py. The modifications are in the classes. class BertOutput(nn.Module) and class AdaptBertOutput(nn.Module) in this repository there is this file already modified.

* Change the file  /home/youruser/mmf/mmf/models/vilbert.py by the file in this repository

        
## Hardware
We used a Nvidia DGX-1 station for training, with 4 GPUS V100. However, you do not need such a machine to perform the experiments. With an 8GB GPU (eg GTX 1080), and reducing the batch size, you can reproduce our results.






# parameter-efficient
This repository has the experiments log from the paper -Parameter-Efficient Fine Tuning for Multimodal Hate Speech Detection in Memes
## Wellcome
In this repository you will find the necessary information to replicate the experiments carried out in the paper. We split the information in the following order:


*  Environment of the experiments.
*  Datasets.
*  Model.
*  Hardware used.
*  Tips
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

* Change the file  /home/youruser/mmf/mmf/models/vilbert.py by the file in this repository.

        
## Hardware
We used a Nvidia DGX-1 station for training, with 4 GPUS V100. However, you do not need such a machine to perform the experiments. With an 8GB GPU (eg GTX 1080), and reducing the batch size, you can reproduce our results.


## Tips

* First use the HMD dataset, do the 3 types of training. Then start working with the MMH dataset.
* Follow the command line contained in the visualbert.sh file, there are the necessary commands to perform the training.
* The VisualBERT model needs text data, and image regions that contain objects. This second part, for the MMH dataset must be generated. Information on how to extract this information from the meme image can be found at https://mmf.sh/docs/tutorials/image_feature_extraction.


## Ours Results
To save the results of all experiments, as well as the settings made, hardware data, training log, etc. We use the services of the website https://wandb.ai.


### AUCROC Curve - HMD Dataset
![image](https://user-images.githubusercontent.com/120152766/208498812-25091b93-a2f4-43a4-b5b3-a98385183bfe.png)

### Loss Curve - HMD Dataset
![image](https://user-images.githubusercontent.com/120152766/208498900-f837c340-85a4-4697-b79f-9e1f2e5eac10.png)

The training logs of the first experiment are in the files:
* HMD-FC-output.log
* HMD-Full-FT-output.log
* HMD-PE-output.log

### AUCROC Curve - MMH Dataset
![image](https://user-images.githubusercontent.com/120152766/208502803-4eb04383-d367-4ed7-9c12-a9e4017640a9.png)

### Loss Curve - MMH Dataset
![image](https://user-images.githubusercontent.com/120152766/208502975-d1a7e8c7-cfba-4c40-be19-7daec9fbf1db.png)

The training logs of the second experiment are in the files:
* MMH-FC-output.log
* MMH-Full-FT-output.log
* MMH-PE-output.log

## Conclusion
![image](https://user-images.githubusercontent.com/120152766/209111278-91f4939f-dccc-4364-ac9e-94bfb1c0a44c.png)
![image](https://user-images.githubusercontent.com/120152766/209111175-385596c8-7e16-4c3a-835f-0929e9c3704b.png)

The Parameter-Efficient approach, which was initially used
in monomodal models for text, and expanded in this work
to multimodal models that use text and image to detect hate
speech in memes, achieved positive results. The introduction
of these small blocks of parameters into the encoder structure
improved the performance of the model. This was achieved
by achieving a gain of 21% for the HMD dataset and 12.5%
for the MMH, when compared to the traditional method of
fine tuning. In Full-Fine Tuning mode, that is, leaving all
model parameters unfrozen, this approach produced very close
results, see Table II. When compared to the state of the art
in meme classification, it managed to nearly match the MMH
dataset, with 98.6% of the value. It also comes close to the
HMD dataset, with 84.7% of the value. With these results
and with the reduction in computational resources to generate
them, since there was a 98% reduction in the total parameters
to be trained, see Table I. This approach achieves the objective
of being able to be used in online systems for detection
of hate speech in memes. In future works, we will explore
the positive effect of this approach on combating Data Shift,
that is, the change in data content over time. This is a very
common situation for memes, with their content being affected
by seasonal events.

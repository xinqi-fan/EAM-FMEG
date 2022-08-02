# Edge-Aware Motion based Facial Micro-Expression Generation with Attention Mechanism

by Xinqi Fan, Ali Shahid, and Hong Yan

## Introduction
This repository is for our work Edge-Aware Motion based Facial Micro-Expression Generation with Attention Mechanism.

## Usage
### Requirement
Python 3.6

PyTorch 1.6


### Download
Clone the repository:
```
git clone https://github.com/xinqi-fan/EAM-FMEG
cd EAM-FMEG
```

### Prepare data

* Please download CASME, SMIC, and SAMM.
* Modify the path to your dataset in the following config/camse-edge-attention-256.yaml, config/smic-edge-attention-256.yaml, config/samm-edge-attention-256.yaml.

### Train the model

* Please refer to train.sh and modify the related checkpoint path.

### Test the model

* Please refer to demo.sh and modify the related paths.

## Generated videos

* FMEs can be visualized better in [videos](https://drive.google.com/drive/folders/1gOL_tEnrrcgZ1aBb44nz4GoHl6XXsoTN).

## Citation
To be updated

## Comment
We welcome any pull request for improving the code.

## Acknowledge
The code is developed based on [first-order-motion model](https://github.com/AliaksandrSiarohin/first-order-model).

#!/bin/sh

#Install Conda
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh --output $HOME/miniconda
bash ~/miniconda.sh -b -p $HOME/miniconda
source ~/miniconda/bin/activate
conda init zsh

#Create conda env
conda create --name tensorflow python=3.8 --yes

#Use created conda env
conda activate tensorflow 

#Install Tensorflow env
conda install -c apple tensorflow-deps --yes
python -m pip install tensorflow-macos
python -m pip install tensorflow-metal

#Execute
python ./HelloTensorflow.py
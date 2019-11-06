#!/bin/bash

# Download these files first

sudo dpkg -i cudnn/libcudnn7_7.0.5.15-1+cuda9.1_amd64.deb
sudo dpkg -i cudnn/libcudnn7-dev_7.0.5.15-1+cuda9.1_amd64.deb
sudo dpkg -i cudnn/libcudnn7-doc_7.0.5.15-1+cuda9.1_amd64.deb

# Test CUDNN
cp -r /usr/src/cudnn_samples_v7/ $HOME
cd $HOME/cudnn_samples_v7/mnistCUDNN
make clean && make
./mnistCUDNN

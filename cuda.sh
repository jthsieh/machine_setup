#!/bin/bash
# Verify
lspci | grep -i nvidia
gcc --version

# CUDA 9
sudo service lightdm stop
sudo apt remove --purge nvidia*
wget https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_387.26_linux
sudo sh cuda_9.1.85_387.26_linux

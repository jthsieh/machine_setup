# Machine Setup

Steps to setup when 

## Local Setup

### Vim
```
./vim.sh
```
This will clone the [Vundle](https://github.com/VundleVim/Vundle.vim.git) repository and install the plugins specified in the `.vimrc` file.

### Git

```
git config --global core.editor "vim"
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
```

### Anaconda

Download [Anaconda](https://www.anaconda.com/distribution/), then
```
bash ~/Anaconda3-2019.10-Linux-x86_64.sh
```
Open `~/.bashrc` and add the following line (if not added automatically)
```
export PATH="/Users/timhsieh/anaconda3/bin:$PATH"
```


### Pytorch
```
conda install pytorch torchvision cudatoolkit=10.1 -c pytorch
```

### Tensorflow
```
pip install msgpack
pip install tensorflow
```

### Wandb
```
pip install wandb
wandb login
```


## Sudo Access
If it's a completely new server and we have sudo access, then first run
```
./basics.sh
```

### CUDA
Check the latest version. Currently CUDA 9.
```
./cuda.sh
```

### cuDNN
First download the latest cudnn packages. Then,
```
./cudnn.sh
```

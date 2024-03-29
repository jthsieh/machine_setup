# Machine Setup

Steps to setup when you get a new machine. Mainly for machine learning research.

## Local Setup (Linux, MacOS)

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
Create a `~/.gitignore_global` file (ex. add `.DS_Store` for Mac), then
```
git config --global core.excludesfile ~/.gitignore_global
```

### Anaconda

Download [Anaconda](https://www.anaconda.com/distribution/), then
```
bash ~/Anaconda3-2019.10-Linux-x86_64.sh
```
Open `~/.bashrc` (Linux) or `.bash_profile` (MacOS) and add the following line (if not added automatically)
```
export PATH="~/anaconda3/bin:$PATH"
```

Next, add the line
```
export PYTHONSTARTUP=~/.startup.py
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

## MacOS

[This guide](https://sourabhbajaj.com/mac-setup/) is a nice setup guide for macOS, including Homebrew, iTerm2, etc.

### VS Code

Install [VS Code](https://code.visualstudio.com/).
Extensions: [Vim](https://github.com/VSCodeVim/Vim), [LaTex Workshop](https://github.com/James-Yu/LaTeX-Workshop), [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker), [Dracula](https://draculatheme.com/visual-studio-code), etc.

Setup VS Code settings and keyboard shortcuts: `settings.json` and `keybindings.json`.
These files are located in `~/Library/Application\ Support/Code/User/`, but it is easier to open and edit them directly in VS Code.

To enable key-repeating execute the following in your Terminal and restart VS Code:
```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

```

### LaTeX

Download [Tex Live](https://www.tug.org/texlive/).
Add the following to `.bash_profile`:
```
export PATH="/Library/TeX/texbin:$PATH"
```

### iTerm2

Install [iTerm2](https://iterm2.com/). See [the guide](https://sourabhbajaj.com/mac-setup/iTerm/).
```
brew cask install iterm2
```
zsh
```
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## CUDA (need sudo access)
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

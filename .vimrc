if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
let g:tender_lightline = 1
if exists('+termguicolors')
  set termguicolors
endif
set t_Co=256

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim' " Plugin Manager
    Plugin 'jiangmiao/auto-pairs' " For Bracket Completion
    Plugin 'tpope/vim-unimpaired' " For Handy Shortcut
    Plugin 'scrooloose/nerdtree'
    " Plugin 'drewtempelmeyer/palenight.vim'
    Plugin 'morhetz/gruvbox'
    " Plugin 'shanzi/autoHEADER'
call vundle#end()

" autocmd vimenter * NERDTree

set number
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard+=unnamed
set smartindent
set so=7
set wildmenu
set wildmode=longest:full,full
set ignorecase
set smartcase
set hlsearch
set incsearch
set magic
set noerrorbells
set showmatch
set mat=2

set pastetoggle=<F10>
inoremap jk <ESC>
syntax on

set background=dark
colorscheme gruvbox
"colorscheme smyck
let g:gruvbox_contrast_dark='hard'
highlight Normal ctermbg=NONE

cnoreabbrev nt NERDTree
nnoremap ; :
vnoremap ; :

set pastetoggle=<F10>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Enable folding
set foldmethod=indent
set foldlevel=99

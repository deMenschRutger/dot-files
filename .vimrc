" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Add plugins
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()

" Enable filetype detection, filetype plugins and indent scripts.
filetype plugin indent on

" Update .vimrc immediately after it is modified.
autocmd! bufwritepost .vimrc source %

" Remap h to insert and use ijkl for inverse T cursor movement:
map i <Up>
map j <Left>
map k <Down>
noremap h i

" Disable generating several additional files that Vim generates automatically.
set nobackup
set noswapfile
set noundofile
set nowritebackup

" Search settings
set hlsearch
set ignorecase
set incsearch
set smartcase

" Whitespace settings
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Visual settings
highlight LineNr ctermfg=253 ctermbg=234
set cursorline
set nowrap
set number
set ruler
set t_Co=256
syntax on

" Miscellaneous settings
set history=700
set showcmd
set showmatch
set undolevels=700

" Reselect visual block after indent/outdent 
vnoremap < <gv
vnoremap > >gv

" Airline configuration
set laststatus=2
set timeoutlen=50

" Enable all Python syntax highlighting features.
let python_highlight_all=1

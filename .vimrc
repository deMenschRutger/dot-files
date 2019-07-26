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
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'yggdroot/indentline'

" All of your Plugins must be added before the following line
call vundle#end()

" Enable filetype detection, filetype plugins and indent scripts.
filetype plugin indent on

" Update .vimrc immediately after it is modified.
autocmd! bufwritepost .vimrc source %

" Remap <leader>
let mapleader=","
set notimeout
set nottimeout

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
set listchars=tab:▸▸
set list

" Visual settings
highlight LineNr ctermfg=253 ctermbg=234
set cursorline
set nowrap
set number
set ruler
set t_Co=256
colorscheme desert
syntax on

" Folding behaviour
set foldmethod=indent
nnoremap <space> za

" Miscellaneous settings
set encoding=utf-8
set history=700
set showcmd
set showmatch
set undolevels=700

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Enable all Python syntax highlighting features.
let python_highlight_all=1

" NERDTree configuration
nmap <silent> <C-N> :NERDTreeToggle<CR>
let NERDTreeMapOpenSplit='h'
let g:NERDTreeWinSize=40
let NERDTreeIgnore=['\.pyc$', '\~$']

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['python', 'pep8', 'flake8']

" Powerline configuration
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Always show statusline
set laststatus=2
set t_Co=256

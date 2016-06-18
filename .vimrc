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
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'kien/ctrlp.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'stanangeloff/php.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'yggdroot/indentline'
Plugin 'vim-scripts/align'

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
set listchars=tab:▸▸
set list
autocmd FileType javascript setl sw=2 sts=2 et

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

" Enable pymode
" let g:pymode=1
" let g:pymode_indent=1

" Airline configuration
set laststatus=2
set timeoutlen=50

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
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_javascript_checkers = ['standard']

" NERD Commenter configuration
nnoremap ,c :call NERDComment(0,"toggle")<C-m>
vnoremap ,c :call NERDComment(0,"toggle")<C-m>

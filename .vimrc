" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

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
set cursorline
set number
set ruler
set nowrap
syntax on

" Miscellaneous settings
set history=700
set showcmd
set showmatch
set undolevels=700

" Enable filetype detection, filetype plugins and indent scripts.
filetype plugin indent on

" Enable all Python syntax highlighting features.
let python_highlight_all=1

" Reselect visual block after indent/outdent 
vnoremap < <gv
vnoremap > >gv

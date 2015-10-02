" Use theme
set background=dark
colorscheme smyck

" Make Vim more useful
set nocompatible

" Use UTF-8 without bomb
set encoding=utf-8 nobomb

" Enable line numbers
set number

" Highlight current line
set cursorline

" Make tabs as wide as two spaces
set tabstop=2

" Highlight search
set hlsearch

" Ignore case of searches
set ignorecase

" Enable mouse in all modes
set mouse=a

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Don't create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

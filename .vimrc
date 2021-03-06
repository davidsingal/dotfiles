" Use theme
set background=dark

" Make Vim more useful
set nocompatible

" Use UTF-8 without bomb
set encoding=utf-8 nobomb

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

" Allow backspace in insert mode
set backspace=indent,eol,start

" Optimize for fast terminal connections
set ttyfast

" Don’t add empty newlines at the end of files
set binary
set noeol

" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Highlight current line
set cursorline

" Make tabs as wide as two spaces
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" Show the cursor position
set ruler

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

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

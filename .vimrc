" -- turn on syntax
syntax on

" -- let vim try and detect filetypes and maybe find plugins for them
filetype indent on
filetype on
filetype plugin on

" -- reload files changed outside of vim
set autoread

" -- dont know
set ai

" -- dont know
set confirm

" -- turn on line numbers
set number

" -- dont know
set ignorecase

" -- dont know
set smartcase

" -- turn on utf 8 encoding
set encoding=utf-8
set fileencoding=utf-8

" -- screen will not be redrawn during some stuff and such
set lazyredraw

" -- enables deleting over line break and such
set backspace=indent,eol,start

" -- dont unload buffers when they are abandoned
set hidden

" -- set unix lne endings
set fileformat=unix
set fileformats=unix,dos

" -- save up to 100 marks
set viminfo='100,f1

" -- remove .ext files but not swap files
set nobackup
set writebackup
set noswapfile

" -- keep cursor visible within 3 lines of scrolling
set scrolloff=3

" -- indentation spaces for tabs and such
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4

" -- set text lines no longer than 80 cols
set textwidth=80

" My vim configuration inspired by Anthony Seure config
"
" Authors: Nicolas Barray

" Vundle {

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'

call vundle#end()

" }


" General {

filetype plugin indent on " Load syntax plugins
syntax on
colorscheme jellybeans

let &t_Co=256
set ruler
set number

" Avoid *.swp files
set noswapfile

" }

" Formatting {

set expandtab " Spaces instead of tabulations
set cindent
set tabstop=8 " Length of a tabulation
set shiftwidth=2 " Number of spaces inserted by < and >
set softtabstop=2 " Number of spaces when hitting TAB
set smarttab " Use shiftwidth when tabbing manually
set smartindent " Smart indent...
set autoindent " Use the basic previous line indentation
set wrap
set linebreak
set textwidth=79
set colorcolumn=+1

" }



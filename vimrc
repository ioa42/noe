" My vim configuration inspired by Anthony Seure config
"
" Authors: Nicolas Barray

" Preload {

set nocompatible
filetype off

" }

" Vundle {

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'yurifury/hexHighlight'  " Highlight hex code with its color!
Plugin 'Valloric/YouCompleteMe' " AST completion engine
Plugin 'tpope/vim-surround'     " Surrounds mechanics with 's'
Plugin 'godlygeek/tabular'

call vundle#end()

""" YouCompleteMe {

let mapleader="," " The leader key !
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" Set the global file if no ycm_extra_conf.py exits in the current file.
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/ycm_temp/ycm.conf' 

" STAP asking if the file is safe. Thanks.
let g:ycm_confirm_extra_conf = 0

""" }

" }


" General {

" Detect the correct file type foreach plugin, syntax, index, etc.
filetype plugin indent on

syntax on " Enable syntax
colorscheme jellybeans " Epic color scheme
" colorscheme mac_classic

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



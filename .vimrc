set nocompatible              " be iMproved, required
filetype off                  " required
 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set number
syntax on
set shiftwidth=2
set tabstop=2
set autoindent

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

"Configuración NERDTree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'



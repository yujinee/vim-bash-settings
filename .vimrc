call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'

call plug#end()

syntax on
filetype indent plugin on
set nocompatible
set title
set ruler
set number
set esckeys
set hlsearch
set showmode
set showmatch
set expandtab
set linebreak
set tabstop=2
set scrolloff=2
set shiftwidth=2
set softtabstop=2
set encoding=UTF-8
set fileencodings=UTF-8
set backspace=eol,start,indent
set laststatus=2

colorscheme Tomorrow-Night-Bright

" Remap <ESC> to jk
inoremap jk <ESC>

" Remap mapleader to Space
let mapleader = " "

" Set general Vim options
set bg=dark
syntax on

" Set line numbers and relative line numbering
set number
set relativenumber
set number relativenumber

filetype plugin indent on
set encoding=utf-8
set clipboard=unnamed

" Options that affect only YAML files:
autocmd FileType yaml setlocal ai ts=2 sw=2 et nu cuc cul

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Vim Plug
call plug#begin('~/.vim/plugged')

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }

" Color Schemes
Plug 'flazz/vim-colorschemes'

" NERD Commenter
Plug 'scrooloose/nerdcommenter'
" vim-ripgrep
Plug 'jremmen/vim-ripgrep'
" Surround
Plug 'tpope/vim-surround'

" Syntastic
Plug 'vim-syntastic/syntastic'

" Initialize plugin system
call plug#end()

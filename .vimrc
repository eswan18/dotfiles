set nocompatible
set number relativenumber
set laststatus=2

" Enable folding
set foldmethod=indent
set foldlevel=99

syntax enable
set hlsearch
set ruler

" Language-specifics
set expandtab tabstop=4 shiftwidth=4
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2

if !has('gui_running')
    let g:solarized_termtrans=1
endif

colorscheme solarized
set background=dark
set t_Co=256
" This allows for scrolling with the mouse.
set mouse=nicr

" Vundle Stuff
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My added stuff
Plugin 'vim-scripts/indentpython.vim'
Plugin 'neoclide/vim-jsx-improve'
" Solarized colorscheme
Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required


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

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My added stuff
Plugin 'vim-scripts/indentpython.vim'
Plugin 'neoclide/vim-jsx-improve'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


filetype off
set background=dark
set encoding=utf-8
let g:solarized_termcolors=256

let mapleader="\<Space>"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'wilsaj/chuck.vim'
Plugin 'toyamarinyon/vim-swift'
Plugin 'apple/swift'
Plugin 'fatih/vim-go'
Plugin 'kunstmusik/csound-vim'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'townk/vim-autoclose'
Plugin 'altercation/solarized'
Plugin 'sophacles/vim-processing'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax enable
colorscheme solarized
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set laststatus=2
let g:OmniSharp_selector_ui = 'ctrlp'
let g:OmniSharp_server_type = 'roslyn'
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
set noshowmatch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set showmode
set showcmd


"Folding
set foldenable    " disable folding
set foldnestmax=10
set foldmethod=indent

" open and close folds
nnoremap <space> za


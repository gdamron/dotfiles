""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Set up Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'apple/swift'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'fatih/vim-go'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'helino/vim-json'
Plugin 'kien/ctrlp.vim'
Plugin 'konfekt/fastfold'
Plugin 'OmniSharp/Omnisharp-vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'Rip-Rip/clang_complete'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'sheerun/vim-polyglot'
Plugin 'Shougo/neocomplete.vim'
Plugin 'sophacles/vim-processing'
Plugin 'suan/vim-instant-markdown'
Plugin 'ternjs/tern_for_vim'
Plugin 'toyamarinyon/vim-swift'
Plugin 'tpope/vim-dispatch'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wilsaj/chuck.vim'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/'
let g:clang_complete_auto=0
let g:clang_complete_copen=1
let g:SuperTabDefaultCompletionType='context'
let g:neocomplete#enable_at_startup=1
let g:airline#extensions#tabline#enabled = 1
let g:delimitMate_eol_marker = ';'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show current position
set ruler

" Show line numbers
set number

" Load filetype-specific indent files
filetype indent on

" visual autocomplete for command menu
set wildmenu

" Key command to disable search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
syntax on

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set colorcolumn=80
highlight colorcolumn ctermbg=0*

" Set extra options when running in GUI mode
if has("gui_running")
   set guioptions-=T
   set guioptions+=e
   set t_Co=256
   set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Linebreak on 500 characters
"set lbr
set tw=120

set ai "Auto indent
set si "Smart indent
set cindent "Strict C family indent
"set wrap "Wrap lines

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

"code fold manually
set foldmethod=manual

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python specific settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show hidden character
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" indentation
au FileType py set autoindent
au FileType py set smartindent
" PEP-8 Friendly
au FileType py set textwidth=79

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"syntax highlighting for jsdocs
let g:javascript_plugin_jsdoc=1
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_console_startup=1

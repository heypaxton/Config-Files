set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on
syntax on 
colorscheme solarized 
set background=dark
set noswapfile

set number          
set linebreak      
set showbreak=+++   
set textwidth=100  
set showmatch     
set visualbell   
 
set hlsearch    
set smartcase  
set ignorecase
set incsearch 
 
set autoindent 
set expandtab 
set shiftwidth=2
set smartindent 
set smarttab    
set softtabstop=2 
 
set ruler        
 
set undolevels=1000 
set backspace=indent,eol,start 

set guifont=Inconsolata-dz\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'benjifisher/Vim-Plugin-for-Drupal'
Plugin 'msanders/snipmate.vim'
Plugin 'scrooloose/snipmate-snippets'
Plugin 'Townk/vim-autoclose'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-haml'
Plugin 'elixir-lang/vim-elixir'
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" NMAPS
" nmap <silent> <c-k> :wincmd k<CR>
" nmap <silent> <c-j> :wincmd j<CR>
" nmap <silent> <c-h> :wincmd h<CR>
" nmap <silent> <c-l> :wincmd l<CR>


if has("gui_running")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    set guifont=Anonymous\ Pro\ for\ Powerline:h16
  endif
endif

let g:NERDTreeWinPos = "right"
let g:nerdtree_tabs_open_on_console_startup = 1

let g:ackprg = 'ag --vimgrep'

" Drupal configuration
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"        _____
" ___   ____(_)______ ___
" __ | / /_  /__  __ `__ \
" __ |/ /_  / _  / / / / /
" _____/ /_/  /_/ /_/ /_/
"
"
" Maintainer: Genesis Guerrro 
" Nick: @gengue
" Version: 0.1
" Last Change: 24.04.2015
" -------------------------------------------------------------
"
set nocompatible   " Disable vi-compatibility
set exrc " enable vimrc
let $PATH = '/usr/local/bin:'.$PATH

" Enable history
set history=1000

" Enable hidden buffers
set hidden

" Disable visual bell
set noerrorbells
set novisualbell
set t_vb=

" for my zsh terminal <3
set title
set clipboard=unnamed
set background=dark
set encoding=utf-8
set term=screen-256color
set t_Co=256
set esckeys
set timeoutlen=1000 
set ttimeoutlen=0
set laststatus=2   " Always show the statusline

" Mouse
set mouse=a
set mousehide
set mousemodel=popup

" Descactiva las flechitas
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

colorscheme solarized

"colorscheme jellybeans
"colorscheme zenburn 
"colorscheme twilight 
"colorscheme wombat 
"colorscheme atom-dark 
"colorscheme desert 

" config leader 
let mapleader = ","

execute pathogen#infect()
syntax on
filetype plugin indent on

set guifont=Source\ Code\ Pro\ for\ Powerline:h14 "make sure to escape the spaces in the name properly
let g:airline_powerline_fonts = 1
let g:airline_enable_branch = 1
let g:airline_theme = 'powerlineish'
let g:airline_symbols = {} 
let g:airline_symbols.branch = '⭠'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bn<CR>
" Move to the previous buffer
nmap <leader>h :bp<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Nerd Tree
nmap <C-b> :NERDTreeToggle<cr>
let NERDTreeIgnore = ['\.pyc$']
set autochdir

"autoremove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**
set wildignore=Ui_*,*.git,*.pyc

set nofoldenable    " disable folding

autocmd FileType make setlocal noexpandtab

set cursorline                  " Highlight current line
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set expandtab
set number 
set backspace=2
set ruler
set ignorecase
set colorcolumn=120  
"let g:pymode = 0
" set hlsearch

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file

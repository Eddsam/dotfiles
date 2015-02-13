execute pathogen#infect()
filetype plugin indent on
syntax enable
set encoding=utf-8
colorscheme solarized
set background=dark

set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
let g:airline_powerline_fonts = 1
let g:airline_enable_branch = 1
let g:airline_theme = 'powerlineish'


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline

set mouse=a
set number
"set hlsearch

imap jj <esc>
nmap <C-b> :NERDTreeToggle<cr>
set autochdir

"autoremove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

set laststatus=2
set tabstop=4
set expandtab
set shiftwidth=4


let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file

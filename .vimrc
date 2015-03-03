set nocompatible   " Disable vi-compatibility
set background=dark

syntax on 
filetype plugin indent on
set mouse=a

set history=1000
set encoding=utf-8
set term=screen-256color
set t_Co=256

colorscheme solarized
set showmode

" config leader 
let mapleader = ","

execute pathogen#infect()

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
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
"
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

set laststatus=2   " Always show the statusline

set number
function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc

nnoremap <C-\> :call NumberToggle()<cr>
"set hlsearch

imap jj <esc>
nmap <C-b> :NERDTreeToggle<cr>

set autochdir

"autoremove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**

set nofoldenable    " disable folding

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

let g:pymode = 0

set laststatus=2
set tabstop=4
set expandtab
set shiftwidth=4

let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file

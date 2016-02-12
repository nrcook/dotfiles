" Use Vim settings
set nocompatible

execute pathogen#infect()

" Make backspace work in a sane manner.
set backspace=indent,eol,start

"Turn on syntax highlighting
syntax on

set nowrap          "turn off line wrapping

set nu              "turn on line numbers
set numberwidth=4  "increase left side width

filetype plugin indent on   "Turn on file detection and do language-dependent indenting.

set tabstop=4		"set width of TAB to 4

set shiftwidth=4	"Indents will have a width of 4

set softtabstop=4	"Sets the number of columns for a TAB

set expandtab		" Expands TABS to spaces

" ==========================

let mapleader =" "  

map <C-x> <esc>:w<CR>
imap <C-x> <esc>:w<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nmap <Leader>ev :tabedit $MYVIMRC<cr>


" -----------Auto-Commands--------------
" Automatically source the Vimrc file on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

"Theme
set background=dark
set t_Co=256
colorscheme PaperColor


"Control P
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'



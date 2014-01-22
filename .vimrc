set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'molokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'tpope/vim-rails'
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-distinguished'

filetype plugin indent on     " required!
syntax on


" GUI OPTIONS
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

"set relativenumber
set number
set ruler
set laststatus=2

" TEXT Format
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartcase
set smarttab
set autoindent

set nowrap
set textwidth=79


if has ('gui_running')
    colorscheme railscasts
    "colo molokai
else
    " set vim colors to work on terminal
    set t_Co=256
    colorscheme distinguished
endif
set guifont=Source\ Code\ Pro\ 11


set nocp



" KEYBINDS
"
let mapleader = ","
let g:mapleader = ","
"Turn off arrow keys
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe \"Use j"<CR>"
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

imap jj <ESC>
nmap <leader>q :wqa!<CR>
nmap <leader>w :w!<CR>
nmap <leader><Esc> :q!<CR>

" Execute current buffer as ruby
map <leader>r :w !ruby<CR>

" Maps autocomplete to tab
imap <Tab> <C-N>
" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"

map <C-v> "+gP<CR>
vmap <C-c> "+y

" Leader shortcuts for Rails commands
map <Leader>m :Rmodel
map <Leader>c :Rcontroller
map <Leader>v :Rview
map <Leader>u :Runittest
map <Leader>f :Rfunctionaltest
map <Leader>tm :RTmodel
map <Leader>tc :RTcontroller
map <Leader>tv :RTview
map <Leader>tu :RTunittest
map <Leader>tf :RTfunctionaltest
map <Leader>sm :RSmodel
map <Leader>sc :RScontroller
map <Leader>sv :RSview
map <Leader>su :RSunittest
map <Leader>sf :RSfunctionaltest


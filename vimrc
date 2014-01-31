set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" General Plugins
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'bling/vim-airline' 
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}

"Color Schemes
Bundle 'molokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-distinguished'

" Web development plugins
Bundle 'mattn/emmet-vim'
Bundle 'plasticboy/vim-markdown'

" Python plugins
Bundle 'davidhalter/jedi-vim'
Bundle 'klen/python-mode'

" turn python-mode auto-complete off so doesnt conflict with jedi
let g:pymode_rope_completion = 0


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
    "colorscheme railscasts
    "colorscheme molokai
    colorscheme solarized
    set background=dark
else
    " set vim colors to work on terminal
    set t_Co=256
    set background=dark
    "colorscheme distinguished
    colorscheme solarized
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
nmap <Leader>gcc :! gcc %

" Maps autocomplete to tab
imap <Tab> <C-N>
" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"

nmap <leader>p "+p
nmap <leader>y "+y

" Python plugins keybinds
nmap <leader>r :! python %<CR>
nmap <leader>c :PymodeLint<CR>
nmap <leader>f :PymodeLintAuto<CR>

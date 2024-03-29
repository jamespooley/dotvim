filetype plugin indent on
syntax on

set encoding=UTF-8

inoremap jk <ESC>

set ignorecase
set smartcase

set backspace=indent,eol,start
set wildignore=*.swp,*.bak,*pyc

let g:pymode_python = 'python3'

set shell=/bin/bash

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

let mapleader = "<Space>"

set number
set relativenumber

set cursorline

" Colorscheme ----------------------------------------------

set t_Co=256

set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

set laststatus=2

" Leader Mappings ------------------------------------------

let mapleader = "\<Space>"

nnoremap <leader>x :x<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q!<CR>

autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

vnoremap < <gv
vnoremap > >gv

au BufRead *.html set filetype=htmlm4

" R --------------------------------------------------------

autocmd FileType r setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

let R_assign = 2

imap <C-k> %>%<CR>


" Vim-Slime ------------------------------------------------

let g:slime_target = "tmux"
let g:slime_python_ipython = 1

nmap <c-c><c-l> <Plug>SlimeLineSend

let g:slime_no_mappings = 1

xmap <Leader>s <Plug>SlimeRegionSend
nmap <Leader>s <Plug>SlimeParagraphSend
nmap <c-c>v <Plug>SlimeConfig

" Folding --------------------------------------------------

set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Easy Access to .vimrc File and Apply on Write ------------

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

nmap <Leader>v :tabedit $MYVIMRC<CR>

" NERDTree -------------------------------------------------

map <Leader>n :NERDTreeToggle<CR>


" Whitespace -----------------------------------------------

" Highlight tabs, non-breaking whitespace, and trailing whitespace
set listchars=tab:>~,nbsp:_,trail:.
set list


" PostgreSQL -----------------------------------------------

let g:sql_type_default = 'pgsql'
let g:pgsql_pl = ['python']

inoremap jk <ESC>

set ignorecase
set smartcase

" setlocal foldmethod=indent

let g:pymode_python = 'python3'

filetype plugin indent on
syntax on

set t_Co=256

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

autocmd FileType r setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

let mapleader = "<Space>"

set number
set cursorline

set background=dark
let g:gruvbox_contrast_dark='dark'
colorscheme gruvbox

set backspace=indent,eol,start
set wildignore=*.swp,*.bak,*pyc


" Whitespace -----------------------------------------------

set list
set listchars+=trail:◦

fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()


set laststatus=2

let mapleader = "\<Space>"

nnoremap <leader>x :x<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q!<CR>

autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab


vnoremap < <gv
vnoremap > >gv

au BufRead *.html set filetype=htmlm4


" Vim-Slime ------------------------------------------------

" let g:slime_target = "tmux"
" let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":.2"}
" let g:slime_python_ipython = 1
"
"
let R_assign = 2

imap <C-k> %>%<CR>


set foldmethod=indent
set foldlevel=99
nnoremap <space> za

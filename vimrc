filetype plugin indent on
syntax on

inoremap jk <ESC>

set ignorecase
set smartcase

set backspace=indent,eol,start
set wildignore=*.swp,*.bak,*pyc

let g:pymode_python = 'python3'

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

autocmd FileType r setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

let mapleader = "<Space>"

set number
set relativenumber

set cursorline


" Colorscheme ----------------------------------------------

set t_Co=256

set background=dark
let g:gruvbox_contrast_dark='dark'
colorscheme gruvbox


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


" Leader Mappings ------------------------------------------

let mapleader = "\<Space>"

nnoremap <leader>x :x<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q!<CR>

autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab


vnoremap < <gv
vnoremap > >gv

au BufRead *.html set filetype=htmlm4


" Vim-Slime ------------------------------------------------

let g:slime_target = "tmux"
let g:slime_python_ipython = 1

nmap <c-c><c-l> <Plug>SlimeLineSend

let g:slime_no_mappings = 1

xmap <Leader>s <Plug>SlimeRegionSend
nmap <Leader>s <Plug>SlimeParagraphSend
nmap <c-c>v <Plug>SlimeConfig


" # R ------------------------------------------------------

let R_assign = 2

imap <C-k> %>%<CR>


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


" Snippets -------------------------------------------------

let g:UltiSnipsSnippetsDir = '~/.vim/pack/bundle/start/vim-snippets/UltiSnips'

"'''''''''''''''''''''''''''''''''''''''''
" Syntax
"'''''''''''''''''''''''''''''''''''''''''
syntax on

"'''''''''''''''''''''''''''''''''''''''''
" Line number
"'''''''''''''''''''''''''''''''''''''''''
set number

"'''''''''''''''''''''''''''''''''''''''''
" Font size
"'''''''''''''''''''''''''''''''''''''''''
set guifont=Menlo:h13 " MacOS

"'''''''''''''''''''''''''''''''''''''''''
" Indentation
"'''''''''''''''''''''''''''''''''''''''''
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

"'''''''''''''''''''''''''''''''''''''''''
" Color scheme
"'''''''''''''''''''''''''''''''''''''''''
colorscheme monokai

"'''''''''''''''''''''''''''''''''''''''''
" Insert mode without write i
"'''''''''''''''''''''''''''''''''''''''''
start

"'''''''''''''''''''''''''''''''''''''''''
" Save with Ctrl + s
"'''''''''''''''''''''''''''''''''''''''''
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>


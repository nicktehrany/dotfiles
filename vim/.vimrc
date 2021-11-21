set encoding=utf-8
let mapleader = "\<Space>"
set number
set rnu
set mouse=a
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set noerrorbells
set ignorecase
set smartcase
set incsearch
set noshowmode
set hidden
set scrolloff=8
set hls

nnoremap Y y$

" When going next center cursor and unfold after
nnoremap n nzzzv
nnoremap N Nzzzv

" Set undo break points in insert mode on punctation
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Moving text in different modes
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <Esc>:m .+1<CR>i
inoremap <C-k> <Esc>:m .-2<CR>i
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" substitution
nnoremap S :%s///g <Left><Left><Left><Left>

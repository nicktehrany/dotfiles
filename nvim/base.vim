let mapleader = "\<Space>"
set number
set rnu
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set noerrorbells
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch
set noshowmode
set hidden
set scrolloff=8
set hls
let &fcs='eob: '

" Remap default window movement
map <leader>h :wincmd h<CR>
map <leader>l :wincmd l<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>

" Wrap all files where writing text
augroup WrapText
    autocmd!
    autocmd FileType markdown,latex,text setlocal wrap textwidth=120
augroup END


" When saving delete all trailing whitespaces at eof
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e

set spell spelllang=en_us

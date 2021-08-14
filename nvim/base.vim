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

" Automatically load spell check in certain files
" Use autogroup to group listeners and remove all active listeners from
" group with autocmd! when resourcing vimrc
augroup Spellcheck
    autocmd!
    autocmd FileType markdown,text,latex setlocal spell spelllang=en_us
    autocmd BufRead,BufNewFile *.md,*.txt,*.tex setlocal spell spelllang=en_us
augroup END

set completeopt=menuone,noselect

highlight clear SignColumn

" Disable mouse scroll and arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

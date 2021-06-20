set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Color schemes
Plugin 'ryanoasis/vim-devicons'
Plugin 'morhetz/gruvbox'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'gregsexton/gitv'

" Themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Utility
Plugin 'tomtom/tcomment_vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-syntastic/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'majutsushi/tagbar'
Plugin 'lervag/vimtex'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'mbbill/undotree'
Plugin 'tenfyzhong/CompleteParameter.vim'
Plugin 'ycm-core/YouCompleteMe'

" Files
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vwxyutarooo/nerdtree-devicons-syntax'

call vundle#end()            " required
filetype plugin indent on    " required

let g:gruvbox_guisp_fallback = "bg"
silent! colorscheme gruvbox
set background=dark

let g:airline_theme='base16_gruvbox_dark_hard'

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
set undodir=~/.vim/undodir
set undofile
set incsearch
set noshowmode
set hidden
set scrolloff=8
set hls

" Wrap all files where writing text
augroup WrapText
    autocmd!
    autocmd FileType markdown,latex,text setlocal wrap textwidth=120
augroup END

" double Esc to clear highlights after search
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

" For locating tags, and then jumping to function defs with Ctrl + ] and back
" to previous location with Ctrl + o
set tags=tags;/

" Disable gitgutter mappings, as they cause delays in other mappings due to
" vim waiting for timeout of command
let g:gitgutter_map_keys = 0

" Remap default window movement
map <leader>h :wincmd h<CR>
map <leader>l :wincmd l<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>

map <leader>u :UndotreeShow<CR>

" Correct Padding for NerdTree Glyphs
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

" CtrlP file finding shortcut
nnoremap <leader>f :CtrlP<CR>
let g:ctrlp_show_hidden = 1

" Mapping Ctrl s to save (a to enter insert mode again)
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a

" Open NerdTree on CTRL-b and Auto open Tree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-b> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1

" Quit NerdTree once a file is opened
let NERDTreeQuitOnOpen = 1

" CompleteParameter
inoremap <silent><expr> ( complete_parameter#pre_complete("()")
smap <C-j> <Plug>(complete_parameter#goto_next_parameter)
imap <C-j> <Plug>(complete_parameter#goto_next_parameter)
smap <C-k> <Plug>(complete_parameter#goto_previous_parameter)
imap <C-k> <Plug>(complete_parameter#goto_previous_parameter)

" YCM
let g:ycm_autoclose_preview_window_after_completion = 1

" Vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#scrollbar#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_symbols = {}
let g:airline_symbols.branch = ''

" tagbar settings
let g:tagbar_compact = 1

"  Leader + Shift and Leader + Shift + Tab to switch between buffers
map <Leader><S-tab> :bprevious<CR>
map <Leader><tab> :bnext<CR>

" When saving delete all trailing whitespaces at eof
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e

" Enable autocompletion:
set wildmode=longest,list,full

" Compiling LaTeX documents with Ctrl+C
map <C-c> \ll<CR>

" Clear the log of vimtex with Ctrl+l
map <C-l> \le<CR>

let g:vimtex_view_method = 'zathura'

" Spell Checker on <F6>
map <F6> :setlocal spell! spelllang=en_us<CR>

" Automatically load spell check in certain files
" Use autogroup to group listeners and remove all active listeners from
" group with autocmd! when resourcing vimrc
augroup Spellcheck
    autocmd!
    autocmd FileType markdown,text,latex setlocal spell spelllang=en_us
    autocmd BufRead,BufNewFile *.md,*.txt,*.tex setlocal spell spelllang=en_us
augroup END

" Markdown settings
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1
let g:vim_markdown_json_frontmatter = 1

nmap <F8> :TagbarToggle<CR>

inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

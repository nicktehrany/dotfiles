set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Color schemes
Plugin 'flazz/vim-colorschemes'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'gregsexton/gitv'

" Themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Utility
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/ZoomWin'
Plugin 'ervandew/supertab'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-syntastic/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'majutsushi/tagbar'

" Files
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme codedark

set number
set rnu
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Open NerdTree on CTRL-n and Auto open Tree if no files specified
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1

" Spell Checker on <F6>
map <F6> :setlocal spell! spelllang=en_us<CR>

nmap <F8> :TagbarToggle<CR>

inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

set encoding=utf-8
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
set incsearch
set noshowmode
set hidden
set scrolloff=8
set hls
set showmode

nnoremap Y y$
nnoremap <silent><Esc><Esc> :nohlsearch<CR>

" quickfix list movement
map <C-j> :cn<CR>
map <C-k> :cp<CR>

" When going next center cursor and unfold after
nnoremap n nzzzv
nnoremap N Nzzzv

onoremap <silent> j gj
onoremap <silent> k gk

" Set undo break points in insert mode on punctation
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

map <leader>h :wincmd h<CR>
map <leader>l :wincmd l<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>

" Moving text in different modes
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <Esc>:m .+1<CR>i
inoremap <C-k> <Esc>:m .-2<CR>i
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" substitution
nnoremap S :%s///g <Left><Left><Left><Left>

" Plugin
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-commentary'
call plug#end()

augroup Spellcheck
    autocmd!
    autocmd FileType markdown,text,latex,gitcommit setlocal spell spelllang=en_us
    autocmd BufRead,BufNewFile *.md,*.txt,*.tex setlocal spell spelllang=en_us
augroup END

augroup WrapText
    autocmd!
    autocmd FileType markdown,tex,text setlocal wrap textwidth=120
augroup END

hi clear SpellBad                                                
hi clear SpellRare                                               
hi clear SpellCap                                                
hi clear SpellLocal
hi SpellBad cterm=underline ctermfg=Red ctermbg=NONE
hi SpellRare cterm=underline ctermfg=DarkGreen ctermbg=NONE
hi SpellCap cterm=underline ctermfg=DarkBlue ctermbg=NONE 
hi SpellLocal cterm=underline ctermfg=DarkGreen ctermbg=NONE 

""""""""""""""""""""""""""""""""
"""""""""" Dirvish """""""""""""
""""""""""""""""""""""""""""""""
map <C-b> :Dirvish<CR>

let g:dirvish_mode=1
let g:dirvish_relative_paths=0

" Disable netwr
let g:loaded_netrw=1
let g:netrw_loaded_netrwPlugin=1

" Kudos for the inspiration to
" https://github.com/Melandel/workflow/blob/c323969e4bd48dda6dbceada3a7afe8bacdda0f5/setup/my_vimrc.vim#L976-L1147

function! CreateFile()
    let name = input('File name: ')
    if trim(name) == ''
        return
    endif
    let path = expand('%', 1)
    let filename = printf('%s%s', path, name)
    if !empty(glob(filename))
        redraw
        echomsg printf('%s already exists.', filename)
        return
    endif
    let cmd = printf(':!touch %s', filename)
    silent execute(cmd)
    normal R
endf

function! CreateDir()
    let name = input('Dir name: ')
    if trim(name) == ''
        return
    endif
    let path = expand('%', 1)
    let dirname = printf('%s%s', path, name)
    if !empty(glob(dirname))
        redraw
        echomsg printf('%s already exists.', dirname)
        return
    endif
    let cmd = printf(':!mkdir %s', dirname)
    silent execute(cmd)
    normal R
endf

function! Delete()
    let target = trim(getline('.'), '/\')
    let name = fnamemodify(target, ':t')
    let path = expand('%', 1)
    let filename = printf('%s%s', path, name)
    silent execute(printf(':! rm -rf %s', filename))
    normal R
endfunction

function! Rename()
    let target = trim(getline('.'), '/\')
    let oldname = fnamemodify(target, ':t')
    let newname = input('New file/dir name: ', oldname)
    if trim(newname) == ''
        return
    endif
    let path = expand('%', 1)
    let fulloldname = printf('%s%s', path, oldname)
    let fullnewname = printf('%s%s', path, newname)
    if !empty(glob(fullnewname))
        redraw
        echomsg printf('%s already exists in %s.', newname, path)
        return
    endif
    let cmd = printf('!mv %s %s', fulloldname, fullnewname)
    silent execute(cmd)
    normal R
endfunction

function! MoveOrCopy(type)
    if @d == ''
        echo 'No path to selected.'
        return
    endif
    
    let curr_item = getline(".")
    if !isdirectory(curr_item)
        let path = expand('%', 1)
    else
        let path = curr_item
    endif
    let cmd = printf('!%s %s %s', a:type, @d, path)
    silent execute(cmd)
    normal R
endfunction

function! PreviewFile()
	let path = trim(getline('.'))
    
    " I never split windows, so preview checks if I already have a split
    " preview then replace it, otherwise just split 
    " TODO: Make this not hardcoded!
    let winnr = winnr('$')
    if winnr == 2
        silent execute('wincmd l')
        let winid = win_getid()
        call win_execute(winid, 'close', 'silent')
    endif

    let cmd = printf('vs %s', path)
    silent execute(cmd)
    normal R
endfunction

augroup dirvish_config
    au!
    autocmd FileType dirvish nnoremap <silent> <buffer>cc :call CreateFile()<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>C :call CreateDir()<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>dd :call Delete()<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>r :call Rename()<CR>
    autocmd FileType dirvish nnoremap <buffer>yy ^"dy$
    autocmd FileType dirvish unmap <buffer>p
    autocmd FileType dirvish nnoremap <silent> <buffer>p :call MoveOrCopy('cp -r')<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>P :call MoveOrCopy('mv')<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>s :call PreviewFile()<CR>
augroup end

map <C-i> :Dirvish<CR>

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

function! DeleteItemUnderCursor()
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
    let newname = input('New file/dir name: ')
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

" TODO: 
"   - open tree for dir
"   - preview files (unmap a, split it on right, instead of left, on put in focus)
"   - copying/pasting/moving files

augroup dirvish_config
    au!
    autocmd FileType dirvish nnoremap <silent> <buffer>c :call CreateFile()<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>C :call CreateDir()<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>dd :call DeleteItemUnderCursor()<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>r :call Rename()<CR>
augroup end

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
    autocmd FileType dirvish nnoremap <silent> <buffer>c :call CreateFile()<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>C :call CreateDir()<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>dd :call Delete()<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>r :call Rename()<CR>
    autocmd FileType dirvish nnoremap <buffer>yy ^"dy$
    autocmd FileType dirvish unmap <buffer>p
    autocmd FileType dirvish nnoremap <silent> <buffer>p :call MoveOrCopy('cp -r')<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>P :call MoveOrCopy('mv')<CR>
    autocmd FileType dirvish nnoremap <silent> <buffer>s :call PreviewFile()<CR>
augroup end

" Wrap all files where writing text
" augroup WrapText
"     autocmd!
"     autocmd FileType markdown,tex,text setlocal wrap textwidth=120
" augroup END

" When saving delete all trailing whitespaces at eof
"autocmd BufWritePre * %s/\s\+$//e
"autocmd BufWritePre * %s/\n\+\%$//e
"autocmd BufWritePre *.[ch] %s/\%$/\r/e

" Automatically load spell check in certain files
" Use autogroup to group listeners and remove all active listeners from
" group with autocmd! when resourcing vimrc
augroup Spellcheck
    autocmd!
    autocmd FileType markdown,text,tex,gitcommit setlocal spell spelllang=en_us
    autocmd BufRead,BufNewFile *.md,*.txt,*.tex setlocal spell spelllang=en_us
augroup END

" Fixes vim failing to detect latex files, and ignores the tresitter error
" since the command gives an error but still works correctly
augroup texFile
    autocmd BufReadPost,BufNewFile *.tex silent! set filetype=tex
augroup END

augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end

augroup WrapText
    autocmd!
    autocmd FileType markdown,tex,text setlocal wrap textwidth=120
augroup END


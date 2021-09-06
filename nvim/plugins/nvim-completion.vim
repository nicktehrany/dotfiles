inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:completion_enable_snippet = 'UltiSnips'
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']

" Key combination to trigger autocomplete on certain files, as is gets very
" annoying if it is constantly being triggered while typing text
autocmd FileType md,txt,tex imap <silent> <c-p> <Plug>(completion_trigger)
autocmd FileType md,txt,tex let g:completion_enable_auto_popup = 0

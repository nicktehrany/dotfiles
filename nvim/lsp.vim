nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>gs :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>gr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>ghn :lua vim.lsp.buf.rename()<CR>
nnoremap H :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>ga :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>gsd :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>gn :lua vim.lsp.diagnostic.goto_next()<CR>

let g:coq_settings = { 'auto_start': 'shut-up' }
let g:coq_settings.display = { 'pum': { 'fast_close': v:false, 'y_max_len': 50, 'y_ratio': 0.5, 'x_max_len': 100 } }
let g:coq_settings.display = { 'preview': { 
            \ 'positions': { 
                \ 'east': 1, 
                \ 'north': 2, 
                \ 'south': 4, 
                \ 'west': 3}, 
            \ 'border': 
                \ [["", "NormalFloat"],
                \ ["", "NormalFloat"],
                \ ["", "NormalFloat"],
                \ [" ", "NormalFloat"],
                \ ["", "NormalFloat"],
                \ ["", "NormalFloat"],
                \ ["", "NormalFloat"],
                \ [" ", "NormalFloat"]]
            \ }}

source $HOME/.config/nvim/lsp-langs.lua

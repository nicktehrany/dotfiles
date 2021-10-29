nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

"source $HOME/.config/nvim/cmp.lua 
"source $HOME/.config/nvim/lsp-langs.lua 

let g:coq_settings = { 'auto_start': 'shut-up' }
let g:coq_settings.display = { 'pum.fast_close': v:false }
let g:coq_settings.display = { 'preview': { 'positions': { 'east': 1, 'north': 2, 'south': 4, 'west': 3}}}

source $HOME/.config/nvim/lsp.lua

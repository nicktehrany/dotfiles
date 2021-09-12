" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" Source all language servers
source $HOME/.config/nvim/lsp/clangd.lua
source $HOME/.config/nvim/lsp/bashls.lua
source $HOME/.config/nvim/lsp/cmake.lua
source $HOME/.config/nvim/lsp/docker.lua
"source $HOME/.config/nvim/lsp/java.lua
source $HOME/.config/nvim/lsp/json.lua
source $HOME/.config/nvim/lsp/pyright.lua
source $HOME/.config/nvim/lsp/vim.lua
source $HOME/.config/nvim/lsp/yaml.lua
source $HOME/.config/nvim/lsp/texlab.lua
source $HOME/.config/nvim/lsp/nvim-cmp.lua
source $HOME/.config/nvim/lsp/lspkind-nvim.lua

" Disable the diagnostics (H in the gutter and inline messages for errors)
"lua vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end

" Auto format on save
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

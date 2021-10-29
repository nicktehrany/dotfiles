local lsp = require "lspconfig"
local coq = require "coq"

-- Languages
require'lspconfig'.bashls.setup{
    coq.lsp_ensure_capabilities{}
}

require'lspconfig'.clangd.setup{
    coq.lsp_ensure_capabilities{}
}

require'lspconfig'.cmake.setup{
    coq.lsp_ensure_capabilities{}
}

require'lspconfig'.dockerls.setup{
    coq.lsp_ensure_capabilities{}
}

require'lspconfig'.jsonls.setup{
    coq.lsp_ensure_capabilities{}
}

require'lspconfig'.pyright.setup{
    coq.lsp_ensure_capabilities{}
}

require'lspconfig'.texlab.setup{
    coq.lsp_ensure_capabilities{}
}

require'lspconfig'.vimls.setup{
    coq.lsp_ensure_capabilities{}
}

require'lspconfig'.yamlls.setup{
    coq.lsp_ensure_capabilities{}
}

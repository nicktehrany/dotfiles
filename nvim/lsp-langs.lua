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
    coq.lsp_ensure_capabilities{
       commands = {
          Format = {
            function()
              vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
            end
          }
        }
    }
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

require'lspconfig'.rls.setup{
    coq.lsp_ensure_capabilities{}
}

require'lspconfig'.metals.setup{
    coq.lsp_ensure_capabilities{}
}

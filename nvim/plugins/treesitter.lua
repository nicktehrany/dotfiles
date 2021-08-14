require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "c", "bash", "python", "lua", "json", "latex", "regex", "yaml", "cmake", "bibtex"
  ,"dockerfile", "jsonc" },
  highlight = {
    enable = true
  },
}

local present, ts_config = pcall(require, "nvim-treesitter.configs")
if not present then
    return
end

ts_config.setup {
    ensure_installed = {
        "bash",
        "lua",
        "cpp",
        "c",
        "python",
        "json",
        "latex",
        "regex",
        "yaml",
        "cmake",
        "bibtex",
        "dockerfile",
        "jsonc"
    },
    highlight = {
        enable = true,
        use_languagetree = true
    }
}

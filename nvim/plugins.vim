call plug#begin('~/.config/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'hoob3rt/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter'

" File Manager
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'

" Utility
Plug 'windwp/nvim-autopairs'
Plug 'nvim-lua/lsp-status.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

" Markdown table automation
Plug 'dhruvasagar/vim-table-mode'

" Git
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-signify'
call plug#end()

source $HOME/.config/nvim/plugins/theme.vim
source $HOME/.config/nvim/plugins/nvim-autopairs.vim
source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/plugins/signify.vim
source $HOME/.config/nvim/plugins/undotree.vim
source $HOME/.config/nvim/plugins/table-mode.vim
source $HOME/.config/nvim/plugins/lualine.lua
source $HOME/.config/nvim/plugins/treesitter.lua
source $HOME/.config/nvim/plugins/dirvish.vim

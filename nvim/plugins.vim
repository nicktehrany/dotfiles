call plug#begin('~/.nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'hoob3rt/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter'

" File Tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ryanoasis/vim-devicons'

" Utility
Plug 'windwp/nvim-autopairs'
Plug 'Pocco81/AutoSave.nvim'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'akinsho/nvim-bufferline.lua'

" Telescope
Plug 'nvim-telescope/telescope.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'norcalli/snippets.nvim'

" LaTeX (Compiling)
Plug 'lervag/vimtex'

" Markdown table automation
Plug 'dhruvasagar/vim-table-mode'

" Git
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-signify'

" Startup page
Plug 'mhinz/vim-startify'
call plug#end()

source $HOME/.config/nvim/plugins/theme.vim
source $HOME/.config/nvim/plugins/nvim-tree.vim
source $HOME/.config/nvim/plugins/nvim-autopairs.vim
source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/plugins/bufferline.vim
source $HOME/.config/nvim/plugins/signify.vim
source $HOME/.config/nvim/plugins/startify.vim
source $HOME/.config/nvim/plugins/undotree.vim
source $HOME/.config/nvim/plugins/vimtex.vim
source $HOME/.config/nvim/plugins/table-mode.vim
source $HOME/.config/nvim/plugins/lualine.lua
source $HOME/.config/nvim/plugins/nvim-compe.lua
source $HOME/.config/nvim/plugins/treesitter.lua

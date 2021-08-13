call plug#begin('~/.nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" File Tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" Utility
Plug 'windwp/nvim-autopairs'
Plug 'Pocco81/AutoSave.nvim'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'lervag/vimtex'
Plug 'dhruvasagar/vim-table-mode'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'

" Startup page
Plug 'mhinz/vim-startify'
call plug#end()

source $HOME/.config/nvim/plugins/theme.vim
source $HOME/.config/nvim/plugins/nvim-tree.vim
source $HOME/.config/nvim/plugins/nvim-autopairs.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/plugins/bufferline.vim
source $HOME/.config/nvim/plugins/airline.vim
source $HOME/.config/nvim/plugins/gitsigns.lua
source $HOME/.config/nvim/plugins/startify.vim
source $HOME/.config/nvim/plugins/undotree.vim
source $HOME/.config/nvim/plugins/vimtex.vim
source $HOME/.config/nvim/plugins/table-mode.vim

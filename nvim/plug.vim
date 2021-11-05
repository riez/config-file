if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
   " Utils
   Plug 'hoob3rt/lualine.nvim'
   Plug 'nvim-lua/popup.nvim'
   Plug 'nvim-lua/plenary.nvim'
   Plug 'windwp/nvim-autopairs'
   " LSP 
   Plug 'neovim/nvim-lspconfig'
	 Plug 'williamboman/nvim-lsp-installer'
   Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim51' }
   Plug 'folke/lsp-colors.nvim'
   Plug 'onsails/lspkind-nvim'
   " Completion
   Plug 'hrsh7th/cmp-nvim-lsp'
   Plug 'hrsh7th/cmp-buffer'
   Plug 'hrsh7th/nvim-cmp'
	 Plug 'L3MON4D3/LuaSnip'
   " Syntax Highlighting
   Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
   Plug 'kyazdani42/nvim-web-devicons'
   " File Browse
   Plug 'kristijanhusak/defx-git'
   Plug 'kristijanhusak/defx-icons'
   Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
   Plug 'nvim-telescope/telescope.nvim'
   Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
	 " Formatting
   Plug 'dense-analysis/ale'
endif

call plug#end()

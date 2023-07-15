local cmd = vim.cmd

cmd [[packadd packer.nvim]]

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'terrastruct/d2-vim'
  use 'hashivim/vim-terraform'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'sainnhe/everforest'
  use 'ellisonleao/glow.nvim'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzy-native.nvim'}
  use {
    "folke/which-key.nvim",
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
  use 'github/copilot.vim'
  use {
    "danymat/neogen",
    requires = "nvim-treesitter/nvim-treesitter",
  }
end)

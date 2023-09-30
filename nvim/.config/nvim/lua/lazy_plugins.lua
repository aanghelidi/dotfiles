local M = {
  {"morhetz/gruvbox",lazy = false,priority = 1000},
  {"github/copilot.vim",lazy = false},
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "saadparwaiz1/cmp_luasnip",
  "L3MON4D3/LuaSnip",
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {"nvim-telescope/telescope.nvim", dependencies = { 'nvim-lua/plenary.nvim' }},
  "nvim-telescope/telescope-fzy-native.nvim",
  {"nvim-lualine/lualine.nvim", dependencies = { "kyazdani42/nvim-web-devicons" }},
  {"fatih/vim-go", build = ":GoUpdateBinaries"},
  {"danymat/neogen", dependencies = {"nvim-treesitter/nvim-treesitter"}},
}

return { M }

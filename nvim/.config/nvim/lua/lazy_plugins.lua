local M = {
  {"ellisonleao/gruvbox.nvim", priority = 1000 , config = true},
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "saadparwaiz1/cmp_luasnip",
  "L3MON4D3/LuaSnip",
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", event = { "BufReadPost", "BufNewFile" }},
  {"nvim-telescope/telescope.nvim", dependencies = { 'nvim-lua/plenary.nvim' }},
  "nvim-telescope/telescope-fzy-native.nvim",
  {"nvim-lualine/lualine.nvim", event = "VeryLazy", dependencies = { "kyazdani42/nvim-web-devicons" }},
  {"fatih/vim-go", build = ":GoUpdateBinaries"},
  {"zbirenbaum/copilot.lua"}
}

return { M }

local M = {
  { "neovim/nvim-lspconfig" }, -- still useful for LspInfo like commands
  {
    "ibhagwan/fzf-lua",
    dependencies = { "echasnovski/mini.icons" },
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", event = { "BufReadPost", "BufNewFile" } },
  { "echasnovski/mini.completion",     version = false },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  -- { 'stevearc/conform.nvim' },
  -- { 'mfussenegger/nvim-lint' },
  { 'dense-analysis/ale' },
}

return { M }

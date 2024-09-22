local M = {
  { "neovim/nvim-lspconfig" },
  { "ibhagwan/fzf-lua" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", event = { "BufReadPost", "BufNewFile" } },
  { "ellisonleao/gruvbox.nvim",        priority = 1000 },
  { 'echasnovski/mini.icons',          version = false },
  { 'echasnovski/mini.statusline',     version = false },
  { 'echasnovski/mini.completion',     version = false }
}

return { M }

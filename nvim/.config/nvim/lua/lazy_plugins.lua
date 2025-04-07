local M = {
  { "neovim/nvim-lspconfig" },
  { "ibhagwan/fzf-lua" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", event = { "BufReadPost", "BufNewFile" } },
  { "echasnovski/mini.completion", version = false },
}

return { M }

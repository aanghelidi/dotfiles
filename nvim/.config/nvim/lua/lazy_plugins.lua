local M = {
  { "neovim/nvim-lspconfig" }, -- still useful for LspInfo like commands
  {
    "ibhagwan/fzf-lua",
    dependencies = { "echasnovski/mini.icons" },
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", event = { "BufReadPost", "BufNewFile" } },
  { "echasnovski/mini.completion", version = false },
}

return { M }

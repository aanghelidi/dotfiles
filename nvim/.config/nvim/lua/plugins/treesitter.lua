require'nvim-treesitter.configs'.setup {
  ensure_installed = {"bash", "cmake", "comment", "dockerfile", "go", "html", "javascript", "markdown", "python", "regex", "toml", "tsx", "typescript", "yaml", "lua" },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

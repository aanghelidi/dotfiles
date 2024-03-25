require'nvim-treesitter.configs'.setup {
  ensure_installed = {"bash", "dockerfile", "go", "html", "javascript", "markdown", "python", "regex", "toml", "typescript", "yaml", "lua"},
  auto_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

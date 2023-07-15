require'nvim-treesitter.configs'.setup {
  ensure_installed = {"bash", "cmake", "comment","dockerfile", "go", "hcl", "html", "javascript", "markdown", "python", "regex", "toml", "tsx", "typescript", "yaml", "lua", "terraform", "clojure"},
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

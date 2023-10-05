-- Ale configuration
vim.g.ale_fix_on_save = 1
vim.g.ale_linters_explicit = 1
vim.g.ale_completion_enabled = 0
vim.g.ale_completion_autoimport = 0
vim.g.ale_virtualtext_cursor = 'disabled'
-- Make sure Ale doesn't use LSP
vim.g.ale_disable_lsp = 1
-- Use the diagnostic API
vim.g.ale_use_neovim_diagnostics_api = 1
-- Prettier signs
vim.g.ale_sign_error = '❌'
vim.g.ale_sign_warning = '⚠️'
-- Linters
vim.g.ale_linters = {
  python = {'mypy', 'ruff'},
  go = {'golangci-lint'},
  sh = {'shellcheck'},
}
-- Fixers
vim.g.ale_fixers = {
  python = {'black','isort','ruff'},
}
-- Python
vim.g.ale_python_isort_options = '--profile black'

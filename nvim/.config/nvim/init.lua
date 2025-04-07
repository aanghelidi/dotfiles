-- Basic settings
require('settings')
-- Autocommands
require('autocmds')
-- Plugins
require('plugins')
-- Tree-sitter
require('plugins.treesitter')
-- LSP
require('lsp.pyright')
require('lsp.luals')
require('lsp.ruff')
require('lsp.tsserver')
require('lsp.gopls')
require('lsp.bash')
-- Completions
require('plugins.completion')
-- Fzf
require('plugins.fzf')

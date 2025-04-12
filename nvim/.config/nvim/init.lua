-- Basic settings
require('settings')
-- Autocommands
require('autocmds')
-- Filetype
require('filetype')
-- Plugins
require('plugins')
-- Tree-sitter
require('plugins.treesitter')
-- LSP
require('lsp.based_pyright')
require('lsp.luals')
require('lsp.ruff')
require('lsp.tsls')
require('lsp.gopls')
require('lsp.bash')
require('lsp.markdown')
require('lsp.yaml')
-- Completions
require('plugins.completion')
-- Fzf
require('plugins.fzf')

-- Basic settings
require('settings')
-- Autocommands
require('autocmds')
-- Plugins
require('plugins')
-- LSP
require('lsp.mappings')
require('lsp.pyright')
require('lsp.luals')
require('lsp.ruff')
require('lsp.tsserver')
require('lsp.gopls')
require('lsp.bash')
require('lsp.dockerls')
-- Fzf
require('plugins.fzf')
---- Theme
require('plugins.colorscheme')
---- Autocompletion
require('plugins.nvim_cmp')
---- Tree-sitter
require('plugins.treesitter')
-- Lualine
require('plugins.lualine')

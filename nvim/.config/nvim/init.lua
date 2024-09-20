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
require('lsp.html')
require('lsp.tailwind')
-- Fzf
require('plugins.fzf')
---- Theme
require('plugins.colorscheme')
---- Icons
require('plugins.icons')
---- Autocompletion
require('plugins.nvim_cmp')
---- Tree-sitter
require('plugins.treesitter')
---- Statusline
require('plugins.statusline')

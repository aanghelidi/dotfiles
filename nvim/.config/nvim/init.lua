-- Basic settings
require('settings')
-- Autocommands
require('autocmds')
-- Plugins
require('plugins')
---- Theme
require('plugins.colorscheme')
---- Tree-sitter
require('plugins.treesitter')
-- LSP
require('lsp.pyright')
require('lsp.luals')
require('lsp.ruff')
require('lsp.tsserver')
require('lsp.gopls')
require('lsp.bash')
require('lsp.dockerls')
require('lsp.html')
require('lsp.tailwind')
---- Icons
require('plugins.icons')
---- Autocompletion
require('plugins.completion')
---- Statusline
require('plugins.statusline')
-- Fzf
require('plugins.fzf')

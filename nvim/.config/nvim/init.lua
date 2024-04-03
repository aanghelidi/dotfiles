-- Basic settings
require('settings')
-- Autocommands
require('autocmds')
-- Plugins
require('plugins')
-- LSP
require('lsp.mappings')
require('lsp.jedi')
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
---- Treesitter
require('plugins.treesitter')
---- Go Specific
require('plugins.vimgo')

-- Basic settings
require('settings')
-- Autocommands
require('autocmds')
-- Plugins
require('plugins')
-- Tabby
require('plugins.tabby')
-- LSP
require('lsp.mappings')
require('lsp.pyright')
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

-- Basic settings
require('settings')
-- Autocommands
require('autocmds')
-- Plugins
require('plugins')
-- LSP
require('lsp.mappings')
require('lsp.pyright')
require('lsp.tsserver')
require('lsp.gopls')
require('lsp.bash')
require('lsp.dockerls')
-- Linting
require('plugins.lint')
---- Theme
require('plugins.gruvbox')
---- Autocompletion
require('plugins.nvim_cmp')
---- Treesitter
require('plugins.treesitter')
---- Telescope
require('plugins.telescope')
---- Go Specific
require('plugins.vimgo')
---- Copilot
require('plugins.copilot')
---- Status line
require('plugins.lualine')

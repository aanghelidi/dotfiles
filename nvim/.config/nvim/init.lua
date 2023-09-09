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
-- Transparent plugin setup
require('plugins.transparent')
-- Theme
require('plugins.gruvbox')
-- Autocompletion
require('plugins.nvim_cmp')
-- Neogen
require('plugins.neogen')
-- Treesitter
require('plugins.treesitter')
-- Telescope
require('plugins.telescope')
-- Go Specific
require('plugins.vimgo')
-- Copilot
require('plugins.copilot')
-- Status line
require('plugins.lualine')

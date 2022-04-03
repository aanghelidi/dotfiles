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

-- Autocompletion / snippets
require('plugins.luasnip')
require('plugins.nvim_cmp')

-- Telescope
require('plugins.telescope')

-- Status line
require('plugins.lualine')

-- Go Specific
require('plugins.vimgo')

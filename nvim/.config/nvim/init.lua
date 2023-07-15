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
require('lsp.terraformls')
require('lsp.tflint')

-- Theme
-- require('plugins.gruvbox')
require('plugins.everforest')

-- Autocompletion
require('plugins.nvim_cmp')

-- Which-key
require('plugins.which-key')

-- Neogen
require('plugins.neogen')

-- Glow
require('plugins.glow')

-- Treesitter
require('plugins.treesitter')

-- Telescope
require('plugins.telescope')


-- Go Specific
require('plugins.vimgo')

-- Terraform
require('plugins.vimterraform')

-- Copilot
require('plugins.copilot')

-- Status line
require('plugins.lualine')

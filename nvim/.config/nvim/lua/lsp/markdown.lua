local utils = require('lsp.utils')
local nvim_lsp = require('lspconfig')

nvim_lsp.marksman.setup{
  on_attach = utils.on_attach,
}

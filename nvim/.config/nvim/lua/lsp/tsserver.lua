-- Tsserver setup
local utils = require('lsp.utils')

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['ts_ls'].setup {
  on_attach = utils.on_attach,
  capabilities = capabilities,
}

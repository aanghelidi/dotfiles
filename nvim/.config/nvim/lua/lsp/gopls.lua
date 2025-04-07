local utils = require('lsp.utils')
local capabilities = vim.lsp.protocol.make_client_capabilities()

require('lspconfig').gopls.setup({
  on_attach = utils.on_attach,
  capabilities = capabilities,
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})

local utils = require('lsp.utils')
local capabilities = vim.lsp.protocol.make_client_capabilities()

require('lspconfig').basedpyright.setup {
  on_attach = utils.on_attach,
  capabilities = capabilities,
  settings = {
    pyright = {
      disableOrganizeImports = true,
    },
  },
}

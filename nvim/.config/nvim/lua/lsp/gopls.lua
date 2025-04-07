local utils = require('lsp.utils')
local capabilities = vim.lsp.protocol.make_client_capabilities()

require('lspconfig').gopls.setup({
  on_attach = utils.on_attach,
  capabilities = capabilities,
  settings = {
    gopls = {
      gofumpt = true,
      usePlaceholders = true,
      staticcheck = true,
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    },
  },
})

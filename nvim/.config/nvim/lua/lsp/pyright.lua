local utils = require('lsp.utils')

-- Set up lspconfig.
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require('lspconfig')['pyright'].setup {
  on_attach = utils.on_attach,
  capabilities = capabilities,
  settings = {
    pyright = {
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        ignore = { '*' },
      },
    },
  },
}

-- Gopls setup
local utils = require('lsp.utils')

-- Set up lspconfig.
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require('lspconfig')['gopls'].setup {
  on_attach = utils.on_attach,
  capabilities = capabilities,
}

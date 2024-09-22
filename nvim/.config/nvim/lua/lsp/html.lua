local utils = require('lsp.utils')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require('lspconfig').html.setup {
  on_attach = utils.on_attach,
  capabilities = capabilities,
}

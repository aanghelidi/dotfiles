-- Dockerls setup
local utils = require('lsp.utils')

-- Set up lspconfig.
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require('lspconfig')['dockerls'].setup {
  on_attach = utils.on_attach,
  capabilities = capabilities,
  root_dir = require('lspconfig').util.root_pattern("DockerFile*"),
}

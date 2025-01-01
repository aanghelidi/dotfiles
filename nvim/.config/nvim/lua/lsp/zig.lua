local utils = require('lsp.utils')

require('lspconfig').zls.setup {
  on_attach = utils.on_attach,
}

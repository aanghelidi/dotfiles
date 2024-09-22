local utils = require('lsp.utils')

require('lspconfig').bashls.setup {
  on_attach = utils.on_attach,
}

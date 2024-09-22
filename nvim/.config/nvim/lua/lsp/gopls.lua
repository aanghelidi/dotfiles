local utils = require('lsp.utils')

require('lspconfig').gopls.setup {
  on_attach = utils.on_attach,
}

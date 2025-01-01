local utils = require('lsp.utils')

require('lspconfig').ocamllsp.setup {
  on_attach = utils.on_attach,
}

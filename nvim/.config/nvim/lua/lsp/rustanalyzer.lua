local utils = require('lsp.utils')

require('lspconfig').rust_analyzer.setup {
  on_attach = utils.on_attach,
}

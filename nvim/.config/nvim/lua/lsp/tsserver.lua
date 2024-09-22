local utils = require('lsp.utils')

require('lspconfig').ts_ls.setup {
  on_attach = utils.on_attach,
}

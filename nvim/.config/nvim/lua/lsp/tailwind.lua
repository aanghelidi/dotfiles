local utils = require('lsp.utils')

require('lspconfig').tailwindcss.setup {
  on_attach = utils.on_attach,
}

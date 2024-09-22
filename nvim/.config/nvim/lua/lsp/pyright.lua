local utils = require('lsp.utils')

require('lspconfig').pyright.setup {
  on_attach = utils.on_attach,
  settings = {
    pyright = {
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        ignore = { '*' },
      },
    },
  },
}

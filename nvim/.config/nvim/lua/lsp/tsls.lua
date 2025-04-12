local utils = require('lsp.utils')
local nvim_lsp = require('lspconfig')

nvim_lsp.ts_ls.setup({
  on_attach = utils.on_attach,
  root_dir = nvim_lsp.util.root_pattern("package.json"),
  single_file_support = false
})

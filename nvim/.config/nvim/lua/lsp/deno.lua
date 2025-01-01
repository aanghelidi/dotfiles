local utils = require('lsp.utils')
local nvim_lsp = require('lspconfig')

nvim_lsp.denols.setup {
  on_attach = utils.on_attach,
  root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
}

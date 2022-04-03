-- Dockerls setup
local nvim_lsp = require('lspconfig')

nvim_lsp['dockerls'].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = {
    -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  },
  root_dir = nvim_lsp.util.root_pattern("DockerFile*"),
}

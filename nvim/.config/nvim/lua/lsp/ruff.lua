-- Ruff lsp setup
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local on_attach = function(client, bufnr)

  if client.name == 'ruff_lsp' then
    client.server_capabilities.hoverProvider = false
  end

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<Leader>f', vim.lsp.buf.formatting, bufopts)
end

require('lspconfig')['ruff_lsp'].setup {
  on_attach = on_attach,
  capabilities = capabilities
}

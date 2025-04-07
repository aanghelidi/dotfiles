local capabilities = vim.lsp.protocol.make_client_capabilities()

local on_attach = function(client, bufnr)
  if client.name == 'ruff' then
    client.server_capabilities.hoverProvider = false
  end
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<Leader>bf', vim.lsp.buf.format, bufopts)
end

require('lspconfig').ruff.setup({
  on_attach = on_attach,
  capabilities = capabilities
})


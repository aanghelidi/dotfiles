local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/completion") then
    vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
  end

  if client.supports_method("textDocument/definition") then
    vim.bo[bufnr].tagfunc = "v:lua.vim.lsp.tagfunc"
  end

  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<Leader>bf', vim.lsp.buf.format, bufopts)
end

return {
  on_attach = on_attach
}

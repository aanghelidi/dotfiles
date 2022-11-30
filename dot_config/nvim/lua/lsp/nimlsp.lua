-- Gopls setup

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local buffer_opts = { buffer=true }

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, buffer_opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, buffer_opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, buffer_opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, buffer_opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, buffer_opts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, buffer_opts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, buffer_opts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, buffer_opts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, buffer_opts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, buffer_opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, buffer_opts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, buffer_opts)
end

require('lspconfig')['nimls'].setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

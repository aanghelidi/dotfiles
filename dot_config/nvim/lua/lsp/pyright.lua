-- Pyright setup

require('lspconfig')['pyright'].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = {
    -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  },
  settings = {
    python = {
      analysis = {
        verboseOutput = true,
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
        typeCheckingMode = "strict",
        strictListInference = true,
        strictDictionaryInference = true,
        strictSetInference = true,
      }
    }
  }
}

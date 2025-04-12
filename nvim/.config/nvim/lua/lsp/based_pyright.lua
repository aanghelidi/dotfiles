local utils = require('lsp.utils')
local capabilities = vim.lsp.protocol.make_client_capabilities()

require('lspconfig').basedpyright.setup({
  on_attach = utils.on_attach,
  capabilities = capabilities,
  settings = {
    basedpyright = {
      disableOrganizeImports = true,
      analysis = {
        autoImportCompletions = false,
        autoSearchPaths = false,
        diagnosticMode = "openFilesOnly",
        inlayHints = {
          variableTypes = true,
          callArgumentNames = false,
          functionReturnTypes = true,
          genericTypes = true,
          useTypingExtensions = false
        }
      }
    }
  },
})

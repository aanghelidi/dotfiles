return {
  cmd = { 'basedpyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'ruff.toml' },
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
}

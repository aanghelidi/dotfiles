-- Completion setup
require('mini.completion').setup({
  delay = { completion = 100, info = 100, signature = 50 },
  window = {
    info= { height = 25, width = 80, border = 'none' },
    signature = { height = 25, width = 80, border = 'none' },
  },
  lsp_completion = {
    source_func = 'omnifunc',
    auto_setup = false,
  },
  fallback_action = '<C-p>',
  mappings = {
    force_twostep = '<C-Space>',
  },
  set_vim_settings = true,
})


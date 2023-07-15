local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>g', ':Glow<CR>', opts)

require('glow').setup({
  border = "double",
  width = 120,
})

require("fzf-lua").setup({})

-- Mappings for fzf
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<leader>ff', ':FzfLua files<CR>', opts)
vim.keymap.set('n', '<leader>rg', ':FzfLua live_grep_native<CR>', opts)
vim.keymap.set('n', '<leader>fb', ':FzfLua buffers<CR>', opts)
vim.keymap.set('n', '<leader>fh', ':FzfLua help_tags<CR>', opts)
vim.keymap.set('n', '<leader>dd', ':FzfLua diagnostics_document<CR>', opts)

local opts = { noremap = true, silent = true }


vim.api.nvim_set_keymap("n", "<Leader>dc", ":lua require('neogen').generate({ type = 'class' })<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>df", ":Neogen<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>dt", ":lua require('neogen').generate({ type = 'type' })<CR>", opts)
vim.api.nvim_set_keymap("i", "<C-l>", ":lua require('neogen').jump_next<CR>", opts)
vim.api.nvim_set_keymap("i", "<C-h>", ":lua require('neogen').jump_prev<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>ds", ":lua require('neogen').generate({ annotation_convention = { python = 'numpydoc' }})<CR>", opts)


require('neogen').setup {
    enabled = true,
    languages = {
        python = {
            template = {
                annotation_convention = 'numpydoc',
            }
        },
    }
}


-- UI setup
vim.g.db_ui_execute_on_save = 1
vim.g.db_ui_show_database_icon = 1
vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_disable_mappings_javacript = 1
vim.keymap.set("n", "<leader>dt", ":DBUIToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>db", ":DBUIFindBuffer<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>rs", "<Plug>(DBUI_ExecuteQuery)<CR>", { noremap = true, silent = true })

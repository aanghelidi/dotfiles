-- Vim terraform config
vim.g.terraform_fmt_on_save=1
vim.g.terraform_align=1

-- Keymaps
local map = vim.api.nvim_set_keymap

map("n", "<leader>ti", ":!terraform init<CR>", {noremap = true})
map("n", "<leader>tv", ":!terraform validate<CR>", {noremap = true})
map("n", "<leader>tp", ":!terraform plan<CR>", {noremap = true})
map("n", "<leader>taa", ":!terraform apply -auto-approve<CR>", {noremap = true})

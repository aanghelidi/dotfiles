local exec = vim.api.nvim_exec

-- Python
local python_group_id = vim.api.nvim_create_augroup("Python", {
  clear = true
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  group = python_group_id,
  pattern = "*.py",
  command = "set tabstop=4 softtabstop=4 shiftwidth=4"
})

-- Docker
local docker_group_id = vim.api.nvim_create_augroup("Docker", {
  clear = true
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  group = docker_group_id,
  pattern = "Dockerfile*",
  command = "set filetype=dockerfile"
})


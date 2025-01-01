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

local sql_group_id = vim.api.nvim_create_augroup("SQL", {
  clear = true
})

if vim.fn.executable('sqlformat') then
  vim.api.nvim_create_autocmd({"BufWritePre"}, {
    group = sql_group_id,
    pattern = "*.sql",
    command = "silent execute '%!sqlformat -i lower -k upper -r -'"
  })
end
-- Lsp forced autostart
local filetypes = { "python", "lua", "typescript", "zig" }

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, { callback = function()
    local buf_ft = vim.api.nvim_get_option_value("filetype", {buf = 0})
    local clients = vim.lsp.get_clients()
    if next(clients) == nil and vim.tbl_contains(filetypes, buf_ft) then
      vim.cmd("LspStart " .. buf_ft)
    end
  end,
})

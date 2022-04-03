-- Vim go setup

vim.g.go_fmt_command = "goimports"


local exec = vim.api.nvim_exec

-- Autocmd
exec([[ autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 ]], false)

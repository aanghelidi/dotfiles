local exec = vim.api.nvim_exec

-- Autocmd
exec([[ au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 ]], false)
exec([[ au BufNewFile,BufRead Dockerfile* set filetype=dockerfile ]], false)

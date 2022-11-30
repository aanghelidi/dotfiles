local exec = vim.api.nvim_exec

-- Autocmd
exec([[ au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 ]], false)
exec([[ au BufNewFile,BufRead *.nim set tabstop=2 softtabstop=2 shiftwidth=2 ]], false)
exec([[ au BufNewFile,BufRead Dockerfile* set filetype=dockerfile ]], false)

--- Aoc ---

-- Go
exec([[ autocmd BufNewFile  *.go	0r ~/nvim/skeleton.go ]], false)

-- Perl
exec([[ autocmd Filetype perl vmap <space>fr :!perltidy<CR> ]], false)
exec([[ autocmd Filetype perl nmap <space>ff :%!perltidy<CR>]], false)
exec([[ autocmd Filetype perl nmap <F5> :!perl %<CR> ]], false)
exec([[ autocmd BufNewFile  *.pl	0r ~/nvim/skeleton.pl ]], false)

-- Python
exec([[ autocmd BufNewFile  *.py	0r ~/nvim/skeleton.py ]], false)

local exec = vim.api.nvim_exec

-- Autocmd
exec([[ au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 ]], false)
exec([[ au BufNewFile,BufRead Dockerfile* set filetype=dockerfile ]], false)
exec([[ silent! autocmd! filetypedetect BufRead,BufNewFile *.tf ]], false)
exec([[ autocmd BufRead,BufNewFile *.hcl set filetype=hcl ]], false)
exec([[ autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl ]], false)
exec([[ autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform ]], false)
exec([[ autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json ]], false)



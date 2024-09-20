local opt = vim.opt

opt.number = true
opt.showmode = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.smartindent = true
opt.smarttab = true
opt.expandtab = true
opt.swf = false
opt.wb = false
opt.icon = true
opt.history = 1000
opt.clipboard = 'unnamedplus'
opt.termguicolors = true
vim.g.mapleader = ','
opt.mouse = 'a'
opt.laststatus = 2

-- Completions improvements
vim.keymap.set('i', '<C-F>', '<C-X><C-F>', { buffer = false, remap = false })
vim.keymap.set('i', '<C-L>', '<C-X><C-L>', { buffer = false, remap = false })
vim.keymap.set('i', '<C-Space>', '<C-X><C-O>', { buffer = false, remap = false })
vim.o.pumheight = 10

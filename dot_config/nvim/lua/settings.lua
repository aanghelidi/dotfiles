local opt = vim.opt -- to set options
local cmd = vim.cmd

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
opt.history = 100
opt.clipboard = 'unnamedplus'
opt.termguicolors = true
vim.g.mapleader = ","

cmd 'colorscheme nord'
cmd ' highlight Normal guibg=black'

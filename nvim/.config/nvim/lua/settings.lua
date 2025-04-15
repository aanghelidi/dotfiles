-- Mimic vimrc config
--

-- Core settings
vim.o.autowrite = true
vim.o.backspace = "" -- Vi compatible backspacing
vim.o.display = "truncate"
vim.o.expandtab = true
vim.o.history = 1000
vim.o.icon = true
vim.o.mouse = "a"
vim.o.fixendofline = false
vim.o.foldenable = false
vim.o.showcmd = false
vim.o.swapfile = false
vim.o.writebackup = false
vim.o.relativenumber = true
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.termguicolors = true
vim.o.textwidth = 120
vim.o.ttimeoutlen = 100
vim.o.pumheight = 10
vim.o.laststatus = 0
vim.o.background = "dark"
vim.opt.clipboard = { "unnamedplus" }
vim.g.is_bash = 1

-- Mappings
vim.g.mapleader = ","
vim.keymap.set("n", "<up>", "<C-a>", { noremap = true, silent = true })
vim.keymap.set("n", "<down>", "<C-x>", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Left>", ':echo "<- is disabled!"<CR>', { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Right>", ':echo "-> is disabled!"<CR>', { noremap = true, silent = true })
vim.keymap.set("i", "<C-l>", "<C-x><C-l>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-Space>", "<C-x><C-o>", { noremap = true, silent = true })

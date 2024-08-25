
--- personal vim preferences ---


-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader= ","


-- pretty colors
vim.opt.termguicolors = true

-- persistant undo
vim.opt.undofile = true

-- numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabsize 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- max position on screen
vim.opt.scrolloff = 8

-- use system clipboard
vim.opt.clipboard:append("unnamedplus")


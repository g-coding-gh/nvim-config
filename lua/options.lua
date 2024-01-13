local api = vim.api
local g = vim.g
-- local opt = vim.opt
local o = vim.o
-- Use spaces for tab
o.tabstop=2
o.softtabstop=2
o.shiftwidth=2

-- can also use vim.cmd("set exapandtab = true)
vim.opt.expandtab = true
vim.opt.clipboard = 'unnamedplus'
-- this might be supported for systems that do not support unamedplus
--vim.opt.clipoard = 'unnamedplus'

-- Set line numbering 
vim.opt.relativenumber = true
vim.opt.number = true
-- For nerd font
vim.cmd('set guifont=$HOME/.config/nvim_folder/share/fonts/Hack\\ Nerd\\ Font:h12')

-- Set leader
g.mapleader=" "

-- save undo history
vim.opt.undofile = true

-- case insensitive search unless capital letters are used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- enable mouse support
vim.opt.mouse = 'a'

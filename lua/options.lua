local api = vim.api
local g = vim.g
-- local opt = vim.opt
local bo = vim.bo
-- Use spaces for tab
vim.opt.relativenumber = true
bo.tabstop=2
bo.softtabstop=2
bo.shiftwidth=2

vim.opt.expandtab = true
vim.opt.clipboard = unamed

-- For nerd font
vim.cmd('set guifont=$HOME/.config/nvim_folder/share/fonts/Hack\\ Nerd\\ Font:h12')

-- Set leader
g.mapleader=" "

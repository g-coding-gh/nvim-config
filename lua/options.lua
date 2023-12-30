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

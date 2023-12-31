-- Lazy Install
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("plugins")

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})

-- Color scheme
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

-- Treesitter
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "javascript", "typescript", "ruby", "python", "rust", "java"},
  highlight = { enable = true },
  indent = { enable = true }
})

-- NeoTree
vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal left<CR>", {})

require("options")


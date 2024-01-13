return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    --vim.g.catppuccin_flavor = "latte" -- set the theme within the theme 
    vim.cmd.colorscheme "catppuccin"
  end
}

return  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- Treesitter
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "javascript", "typescript", "ruby", "python", "rust", "java"},
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}

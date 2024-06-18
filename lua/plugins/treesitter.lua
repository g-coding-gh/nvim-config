return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- Treesitter
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "ruby",
        "python",
        "rust",
        "java",
        "graphql",
        "terraform",
        "json",
        "xml",
        "bash",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

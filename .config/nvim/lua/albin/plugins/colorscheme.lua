return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- load the colorscheme here
    vim.cmd([[colorscheme catppuccin-mocha]])
  end,
}
-- "craftzdog/solarized-osaka.nvim",

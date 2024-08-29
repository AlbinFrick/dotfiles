return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- load the colorscheme here
    vim.cmd([[colorscheme catppuccin-mocha]])
    -- vim.cmd([[hi normal guibg=NONE ctermbg=NONE]])
  end,
}
-- "craftzdog/solarized-osaka.nvim",

return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      color = {
        suggestion_color = "#6C7086",
        cterm = 244,
      },
    })
  end,
}

-- Lua
-- https://github.com/folke/zen-mode.nvim
return {
  "folke/zen-mode.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },

  config = function()
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>z", function()
      require("zen-mode").toggle()
    end, { desc = "Toggle zen mode" })
  end,
}

return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require("oil").setup({
      columns = { "icon" },
      view_options = {
        show_hidden = true,
      },

      float = {
        padding = 4,
        max_width = 100,
      },
    })
    vim.keymap.set("n", "<leader>fb", "<CMD>Oil<CR>", { desc = "Open Files in Buffer" })
    vim.keymap.set("n", "<leader>e", require("oil").toggle_float, { desc = "Open Files floating in Buffer" })
  end,
}

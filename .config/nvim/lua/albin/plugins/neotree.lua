return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
      window = {
        position = "left",
      },
    },
    keys = {
      { "<leader>e", "<Cmd>Neotree reveal toggle<CR>", desc = "Toggle NeoTree" },
    },
  },
}

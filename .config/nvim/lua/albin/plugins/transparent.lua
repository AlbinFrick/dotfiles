return {
  "xiyaowong/transparent.nvim",
  opts = {},
  config = function()
    require("transparent").setup({
      vim.keymap.set("n", "<leader>t", require("transparent").toggle, { desc = "Transparent Window" })
    })
  end,
}

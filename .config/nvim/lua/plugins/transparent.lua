return {
  "xiyaowong/transparent.nvim",
  keys = {
    {
      "<leader>t",
      function()
        require("transparent").toggle()
      end,
      desc = "Transparent Window",
    },
  },
}

return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("harpoon").setup({
      menu = {
        width = vim.api.nvim_win_get_width(0) - 40,
      },
    })
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ha", function()
      require("harpoon.mark").add_file()
    end, { desc = "Mark file with harpoon" })
    keymap.set("n", "<leader>1", function()
      require("harpoon.ui").nav_file(1)
    end, { desc = "Go to first harpoon mark" })
    keymap.set("n", "<leader>2", function()
      require("harpoon.ui").nav_file(2)
    end, { desc = "Go to second harpoon mark" })
    keymap.set("n", "<leader>3", function()
      require("harpoon.ui").nav_file(3)
    end, { desc = "Go to third harpoon mark" })
    keymap.set("n", "<leader>4", function()
      require("harpoon.ui").nav_file(4)
    end, { desc = "Go to forth harpoon mark" })
    keymap.set("n", "<leader>5", function()
      require("harpoon.ui").nav_file(5)
    end, { desc = "Go to fifth harpoon mark" })
    keymap.set("n", "<leader>6", function()
      require("harpoon.ui").nav_file(6)
    end, { desc = "Go to sixth harpoon mark" })
    keymap.set("n", "<leader>hl", function()
      require("harpoon.ui").toggle_quick_menu()
    end, { desc = "Show all harpooned files" })
  end,
}

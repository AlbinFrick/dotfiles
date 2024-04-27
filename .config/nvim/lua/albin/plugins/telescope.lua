return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    local builtin = require("telescope.builtin")

    keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Find keymaps" })
    keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Find references" })
    keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Find diagnostics" })
    keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find existing buffers" })
    keymap.set("n", "<leader>fa", builtin.resume, { desc = "Find resume" })
  end,
}

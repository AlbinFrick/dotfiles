-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local key = vim.keymap.set

key("i", "kj", "<esc>", { desc = "Got to normal mode" })
key("n", "<leader>wf", "<cmd>:w<cr>", { desc = "Write File" })

key(
  "n",
  "<leader>on",
  ":ObsidianTemplate <CR> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<CR>",
  { desc = "Add note template" }
)
key("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>", { desc = "formats file" })

key("n", "<leader>z", "<cmd>ZenMode<cr>", { desc = "Zen mode" })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local key = vim.keymap.set

key("n", "sv", "<cmd>vsplit<CR>", { desc = "split vertical pane" })
key("n", "ss", "<cmd>split<CR>", { desc = "split pane" })

key("n", "sl", "<C-w>l", { desc = "Go to right pane" })
key("n", "sh", "<C-w>h", { desc = "Go to left pane" })
key("n", "sj", "<C-w>j", { desc = "Go to pane down" })
key("n", "sk", "<C-w>k", { desc = "Go to pane up" })

key("i", "kj", "<esc>", { desc = "Escape insert mode" })

key("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

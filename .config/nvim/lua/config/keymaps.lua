-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local key = vim.keymap.set

key("i", "kj", "<esc>", { desc = "Got to normal mode" })
key("n", "<leader>sf", "<cmd>:w<cr>", { desc = "Save File" })

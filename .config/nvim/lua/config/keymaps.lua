-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local key = vim.keymap.set

key("i", "kj", "<esc>", { desc = "Got to normal mode" })
key("n", "<leader>wf", "<cmd>:w<cr>", { desc = "Write File" })

-- key(
--   "n",
--   "<leader>on",
--   ":ObsidianTemplate <CR> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<CR>",
--   { desc = "Add note template" }
-- )
-- key("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>", { desc = "formats file" })
-- key("n", "<leader>od", "<cmd>ObsidianDailies<CR>", { desc = "Open daily picker" })

key("n", "<leader>z", "<cmd>ZenMode<cr>", { desc = "Zen mode" })

key("n", "<m-BS>", "dbx", { desc = "Detele word backwards" })
key("i", "<m-BS>", "<esc>dbxi", { desc = "Detele word backwards" })

key("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Open oil" })

key("n", "ss", "<cmd>split<CR>", { desc = "split pane" })
key("n", "sv", "<cmd>vsplit<CR>", { desc = "split vertical pane" })

vim.keymap.del("n", "<C-l>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-h>")

vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-\\>", "<Cmd>NvimTmuxNavigateLastActive<CR>")
vim.keymap.set("n", "<C-Space>", "<Cmd>NvimTmuxNavigateNext<CR>")

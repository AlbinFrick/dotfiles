-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- file manipulation
keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "quit" })

-- window management
keymap.set("n", "sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "ss", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>x", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<Right>", "<cmd>vertical resize +5<CR>", { desc = "increase pane size" }) -- make split windows equal width & height
keymap.set("n", "<Left>", "<cmd>vertical resize -5<CR>", { desc = "decrease pane size" }) -- make split windows equal width & height
keymap.set("n", "<Up>", "<cmd>resize +5<CR>", { desc = "increase pane size" }) -- make split windows equal width & height
keymap.set("n", "<Down>", "<cmd>resize -5<CR>", { desc = "decrease pane size" }) -- make split windows equal width & height

-- window navigation
keymap.set("n", "sl", "<C-w>l", { desc = "Move to right split" })
keymap.set("n", "sh", "<C-w>h", { desc = "Move to left split" })
keymap.set("n", "sk", "<C-w>k", { desc = "Move to up split" })
keymap.set("n", "sj", "<C-w>j", { desc = "Move to down split" })

----- Couldn't set the keymap in plugin file for some reason-----

--  gitsigns
keymap.set("n", "<leader>gl", "<cmd>Gitsigns blame_line<CR>", { desc = "Git blame line" })

-- Todo-comments
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Finds todo-comments" })

--NEORG Global stuff----
keymap.set("n", "<leader>nr", "<cmd>Neorg return<CR>", { desc = "Return to code from neorg" })
keymap.set("n", "<leader>ni", "<cmd>Neorg index<CR>", { desc = "Open neorg on index" })
keymap.set("n", "<leader>nn", "<cmd>Neorg<CR>", { desc = "Run neorg" })
keymap.set("n", "<leader>nj", "<cmd>Neorg journal<CR>", { desc = "Open neorg journal" })
keymap.set("n", "<leader>nsj", "<C-w>s<cmd>Neorg journal<CR>", { desc = "Open neorg journal in horizontal split" })

-- OIL ----
keymap.set("n", "<leader>fb", "<CMD>Oil<CR>", { desc = "Open Files in Buffer" })

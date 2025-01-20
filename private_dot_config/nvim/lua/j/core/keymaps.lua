vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

keymap.set({ "n", "v" }, "<Space>y", '"+y', { desc = "Copy to System clipboard" })

keymap.set("i", "jk", "<Esc>", { desc = "Escape Insert mode" })
-- better up/down
keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

keymap.set("n", "<Space>w", "<cmd>w<CR>", { desc = "Copy to System clipboard" })

-- disable arrowkeys
keymap.set({ "n", "v", "i" }, "<Up>", "<Nop>")
keymap.set({ "n", "v", "i" }, "<Down>", "<Nop>")
keymap.set({ "n", "v", "i" }, "<Left>", "<Nop>")
keymap.set({ "n", "v", "i" }, "<Right>", "<Nop>")

-- Keymaps
local map = vim.keymap.set

map("n", "<Space>f", ":find ")         -- find file
map("n", "<Space>n", ":nohlsearch<CR>")-- clear highlight
map("n", "<Space>h", ":split<CR>")
map("n", "<Space>v", ":vsplit<CR>")
vim.g.mapleader = ' ' 

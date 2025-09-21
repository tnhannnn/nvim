-- Keymaps
local map = vim.keymap.set
map("n", "<C-h>","<C-w>h" )
map("n", "<C-l>","<C-w>l" )
map("n", "<leader>f", ":find ")         -- find file
map("n", "<leader>n", ":nohlsearch<CR>")-- clear highlight
map("n", "<leader>h", ":split<CR>")
map("n", "<leader>v", ":vsplit<CR>")
vim.g.mapleader = ' ' 
-- Compile & run C++ file
vim.keymap.set("n", "<leader>b", function()
  local file = vim.fn.expand("%:p")       -- file hiện tại (full path)
  local output = vim.fn.expand("%:r")     -- tên file bỏ đuôi (.cpp -> main)
  vim.cmd("botright 15split | terminal g++ \"" .. file .. "\" -o \"" .. output .. "\" && \"" .. output .. "\"")
end, { desc = "Build & run C++ file" })


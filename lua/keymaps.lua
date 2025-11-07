-- Keymaps
local map = vim.keymap.set
map("n", "<C-h>", "<C-w>h") --change how to navigate windows from ctrl-w to ctrl
map("n", "<C-l>", "<C-w>l")
map("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" })
map("n", "<C-c>", '"+yy', { desc = "Copy line to system clipboard" })
map("n", "<leader>f", ":find ", { desc = "Find file" })
map("n", "<leader>n", ":nohlsearch<CR>", { desc = "Clear search highlight" })
vim.g.mapleader = " "
-- Compile & run C++ file
vim.keymap.set("n", "<leader>bc", function()
	local file = vim.fn.expand("%:p") -- file hiện tại (full path)
	local output = vim.fn.expand("%:r") -- tên file bỏ đuôi (.cpp -> main)
	vim.cmd('botright 15split | terminal g++ "' .. file .. '" -o "' .. output .. '" && "' .. output .. '"')
end, { desc = "Build & run C++ file" })
-- Run python file
vim.keymap.set("n", "<leader>bp", function()
	local file = vim.fn.expand("%:p") -- lấy full path file hiện tại
	vim.cmd('botright 15split | terminal python3 "' .. file .. '"')
end, { desc = "Run Python file" })
-- Run live server, require npm install -g live-server
map("n", "<leader>ls", function()
	vim.fn.jobstart("live-server . --port=5500", { detach = true })
	print("Live server started on http://127.0.0.1:8080")
end, { desc = "Start live server" })

map("n", "<leader>lx", function()
	vim.fn.jobstart("pkill -f live-server")
	print("Live server stopped")
end, { desc = "Stop live server" })

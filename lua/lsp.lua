local M = {}

function M.setup()
	-- Kích hoạt LSP clangd
	vim.lsp.enable({ "clangd", "css", "html", "ts_ls", "lua_ls" })

	-- Cấu hình hiển thị diagnostic (lỗi, cảnh báo)
	vim.diagnostic.config({
		virtual_text = true, -- Hiện lỗi dạng text ảo ngay dòng code
		signs = true, -- Hiện dấu lỗi bên lề (gutter)
		underline = true, -- Gạch chân đoạn code lỗi
		update_in_insert = false, -- Không hiện lỗi khi đang insert
		severity_sort = true, -- Sắp xếp lỗi theo mức độ nghiêm trọng
	})

	-- Thiết lập keymap mở popup lỗi khi con trỏ đứng trên dòng lỗi
	vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open diagnostic float" })
	-- Bỏ map Ctrl+x Ctrl+o mặc định
	vim.api.nvim_set_keymap("i", "<C-x><C-o>", "", { noremap = true, silent = true })

	-- Gán Ctrl+x để gọi completion (Ctrl+x Ctrl+o)
	vim.api.nvim_set_keymap("i", "<C-x>", "<C-x><C-o>", { noremap = true, silent = true })
end

return M

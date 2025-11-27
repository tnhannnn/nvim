return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	config = function()
		vim.keymap.set(
			"n",
			"<C-n>",
			":Neotree filesystem toggle right <CR>",
			{ desc = "Toggle Neotree right", silent = true }
		)
		vim.keymap.set("n", "<leader>e", ":Neotree<CR>", { desc = "Open or focus Neotree", silent = true })
		require("neo-tree").setup({
			window = { width = 30, position = "right", statusline = false },
			filesystem = {
				follow_current_file = {
					enabled = true,
					leave_dirs_open = false,
				},
				use_libuv_file_watcher = true, -- Tự động cập nhật khi file thay đổi
				filtered_items = {
					visible = false,
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
		})
	end,
}

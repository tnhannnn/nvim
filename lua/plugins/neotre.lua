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
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle right <CR>", {})
		vim.keymap.set("n", "<C-e>", ":Neotree<CR>", {})
		require("neo-tree").setup({
			window = { width = 25, position = "right" },
		})
	end,
}

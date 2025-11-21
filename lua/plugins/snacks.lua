return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			-- Chỉ enable những gì bạn cần
			input = { enabled = true }, -- cần cho picker nhập text
			picker = { enabled = true }, -- file picker / grep
			dashboard = { enable = true },
		},
		keys = {
			-- Mở Lazygit
			{
				"<leader>lg",
				function()
					require("snacks").lazygit()
				end,
				desc = "Lazygit",
			},

			-- File picker
			{
				"<leader>pf",
				function()
					require("snacks").picker.files()
				end,
				desc = "Find Files",
			},
			{
				"<leader>ps",
				function()
					require("snacks").picker.grep()
				end,
				desc = "Grep word",
			},
		},
	},
}

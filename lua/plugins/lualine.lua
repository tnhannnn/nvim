return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "rose-pine",
				globalstatus = true,
				--[[disabled_filetypes = {
					winbar = { "neo-tree" },
					statusbar = { "neo-tree" },
				},
]]
			},
			sections = {
				lualine_x = {
					{ "encoding" },
					{ "fileformat", symbols = { unix = "" } },
					{ "filetype" },
				},
			},
		})
	end,
}

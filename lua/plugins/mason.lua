return {
	"williamboman/mason.nvim",
	opts = {
		ensure_installed = {
			"clangd",
			"clang-format",
			"lua-language-server",
			"html-lsp",
			"css-lsp",
			"typescript-language-server",
			"prettier",
			"stylua",
		},
		automatic_installation = true, -- chỉ cài nếu chưa có
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},
}

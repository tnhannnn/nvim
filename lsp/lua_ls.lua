return {
	name = "lua_ls",
	cmd = { "lua-language-server" },
	root_dir = vim.fs.dirname(vim.fs.find({ ".luarc.json", ".luarc.jsonc", ".git" }, { upward = true })[1]),
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = { enable = false },
		},
	},
}

local mason_bin = vim.fn.stdpath("data") .. "/mason/bin"

return {
  name = "ts_ls",
  cmd = { mason_bin .. "/typescript-language-server", "--stdio" },
  root_dir = vim.fs.dirname(vim.fs.find({".git", "package.json"}, { upward = true })[1]),
}

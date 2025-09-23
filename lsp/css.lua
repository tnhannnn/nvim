local mason_bin = vim.fn.stdpath("data") .. "/mason/bin"

return {
  name = "cssls",
  cmd = { mason_bin .. "/vscode-css-language-server", "--stdio" },
  root_dir = vim.fs.dirname(vim.fs.find({".git", "package.json"}, { upward = true })[1]),
}

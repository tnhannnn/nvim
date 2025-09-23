local mason_bin = vim.fn.stdpath("data") .. "/mason/bin"

return {
  name = "html",
  cmd = { mason_bin .. "/vscode-html-language-server", "--stdio" },
  root_dir = vim.fs.dirname(vim.fs.find({".git", "package.json"}, { upward = true })[1]),
}

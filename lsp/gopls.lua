-- lsp/gopls

return {
  cmd = { "gopls" },
  filetypes = { "go", "mod", "sum" },
  root_markers = { ".git", "go.mod", "go.sum" }
}

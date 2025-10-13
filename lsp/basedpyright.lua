-- lsp.basedpyright

return {
  cmd = { "basedpyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { ".git", ".venv", "pyproject.toml" },
  settings = {
    basedpyright = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        typeCheckingMode = "standard",
        diagnosticMode = "openFilesOnly",
      },
      inlayHints = {
        enabled = true,
        variableTypes = true,
        callArgumentNames = true,
        functionReturnTypes = true,
      },
    },
  },
}

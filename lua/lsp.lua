-- lsp

vim.keymap.del("n", "grn")
vim.keymap.del("n", "gra")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "gO")

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufopts = { noremap = true, silent = true }

    local virtual_lines_enabled = false

    local custom_signs = {
      [vim.diagnostic.severity.ERROR] = "Error",
      [vim.diagnostic.severity.WARN] = "Warning",
      [vim.diagnostic.severity.INFO] = "Info",
      [vim.diagnostic.severity.HINT] = "Hint",
    }

    local function diagnostic_format(diagnostic)
      return string.format(
        "%s (%s): %s",
        custom_signs[diagnostic.severity],
        diagnostic.code,
        diagnostic.message
      )
    end

    local function toggle_virtual_lines()
      virtual_lines_enabled = not virtual_lines_enabled
      if virtual_lines_enabled then
        vim.diagnostic.config({
          virtual_lines = {
            current_line = true,
            format = diagnostic_format,
          }
        })
      else
        vim.diagnostic.config({
          virtual_lines = false,
        })
      end
    end

    vim.keymap.set("n", "<leader>el", toggle_virtual_lines, bufopts)
    vim.keymap.set("n", "<leader>ee", function()
      vim.diagnostic.enable(not vim.diagnostic.is_enabled())
    end, bufopts)
    vim.keymap.set("n", "<leader>ef", function()
      vim.diagnostic.open_float()
    end, bufopts)
    vim.keymap.set("n", "<leader>eh", function()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
    end, bufopts)
    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, bufopts)
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, bufopts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
    vim.keymap.set("n", "<leader>fmt", function()
      vim.lsp.buf.format({ async = true })
    end, bufopts)

    vim.diagnostic.config({
      signs = false,
      virtual_lines = virtual_lines_enabled,
      underline = true,
      severity_sort = true,
    })
  end
})

vim.lsp.enable({ "ols" })
vim.lsp.enable({ "phpactor" })
vim.lsp.enable({ "basedpyright" })
vim.lsp.enable({ "gopls" })
vim.lsp.enable({ "luals" })

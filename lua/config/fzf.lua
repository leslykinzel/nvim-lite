return {
  "junegunn/fzf.vim",
  dependencies = { "junegunn/fzf" },
  init = function()
    vim.env.FZF_DEFAULT_OPTS = "--no-preview"
    vim.g.fzf_layout = { window = "enew" }
    vim.g.fzf_preview_window = {}
    vim.keymap.set("n", "<leader>ff", ":Files<CR>", { desc = "FZF: Files" })
    vim.keymap.set("n", "<leader>fb", ":Buffers<CR>", { desc = "FZF: Buffers" })
    vim.keymap.set("n", "<leader>rg", ":Rg<CR>", { desc = "FZF: Ripgrep" })
  end,
}

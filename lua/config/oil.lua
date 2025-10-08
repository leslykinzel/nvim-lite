return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = true,
    columns = {
      "permissions",
      "size",
      "mtime",
    },
    win_options = {
      signcolumn = "yes",
    },
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    confirmation = { border = "solid", },
    keymaps_help = { border = "solid", },
    progress = { border = "solid", },
    ssh = { border = "solid", },
  },
  lazy = false,
  init = function()
    vim.keymap.set("n", "-", ":Oil<CR>", { desc = "Open parent directory" })
  end,
}

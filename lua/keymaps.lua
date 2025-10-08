-- config.keymaps

local default_opts = {
    noremap = true,
    silent  = true,
}

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", default_opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", default_opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", default_opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", default_opts)

-- Window resizing
vim.keymap.set("n", "<C-Up>", ":resize +1<CR>", default_opts)
vim.keymap.set("n", "<C-Down>", ":resize -1<CR>", default_opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -1<CR>", default_opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +1<CR>", default_opts)

-- Disable search highlights
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", default_opts)

-- Toggle line numbers
vim.keymap.set("n", "<C-n>", ":set number!<CR>", default_opts)

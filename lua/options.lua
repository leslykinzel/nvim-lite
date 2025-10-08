-- config.options

vim.g.mapleader = " "

-- Indentation / Whitespace
vim.opt.tabstop     = 4
vim.opt.shiftwidth  = 4
vim.opt.expandtab   = true
vim.opt.breakindent = true
vim.opt.list        = true
vim.opt.listchars   = { tab = "» ", trail = "·", nbsp = "␣" }

-- Interface
vim.opt.updatetime    = 250
vim.opt.number        = false
vim.opt.splitright    = true
vim.opt.splitbelow    = true
vim.opt.showmode      = false
vim.opt.mouse         = "a"
vim.opt.signcolumn    = "yes"
vim.opt.scrolloff     = 8
vim.opt.cmdheight     = 1
vim.opt.cmdwinheight  = 10
vim.cmd("colorscheme default")

-- Search
vim.opt.incsearch  = true
vim.opt.ignorecase = true
vim.opt.smartcase  = true

-- config.plugins

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  require("config.fzf"),
  require("config.oil"),
  require("config.blink"),
  require("config.treesitter"),
  require("config.mason"),
  require("config.gitsigns"),
  require("config.mini-move"),
})

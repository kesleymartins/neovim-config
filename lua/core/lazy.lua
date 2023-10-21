local loop = vim.loop
local fn = vim.fn
local o = vim.opt

-- Lazy Setup
local lazypath = fn.stdpath("data") .. "/lazy/lazy.nvim"

if not loop.fs_stat(lazypath) then
  fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

o.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "plugins" },
})

local g = vim.g
local o = vim.opt
local d = vim.diagnostic

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

o.number = true
o.relativenumber = true
o.cursorline = true
o.swapfile = false
o.wrap = false

o.expandtab = true
o.shiftwidth = 2
o.softtabstop = 2
o.tabstop = 2

o.termguicolors = true

d.config({
  virtual_lines = false,
})

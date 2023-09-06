local g = vim.g
local o = vim.opt
local cmd = vim.cmd

-- Options
o.number = true           -- Add line numbers
o.relativenumber = true   -- Set relative line numbers
o.cursorline = true	      -- Add cursor line
o.swapfile = false    	  -- impede a criacao de arquivos .swp 

-- Tab settings
o.expandtab = true
o.shiftwidth = 2
o.softtabstop = 2
o.tabstop = 2
o.termguicolors = true

-- Global
-- Config for NvimTree
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

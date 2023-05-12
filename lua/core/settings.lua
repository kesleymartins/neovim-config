local o = vim.opt
local cmd = vim.cmd

-- Options
o.number = true           -- Add line numbers
o.relativenumber = true   -- Set relative line numbers
o.cursorline = true	  -- Add cursor line
o.swapfile = false    	  -- impede a criacao de arquivos .swp 

-- Tab settings
o.expandtab = true
o.shiftwidth = 2
o.softtabstop = 2


-- Commands
cmd.colorscheme('everblush')

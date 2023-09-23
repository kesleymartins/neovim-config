local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- use U for redo 
map('n', 'U', '<C-r>', opts)

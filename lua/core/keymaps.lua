local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Window Movement
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Use S-u for redo 
map('n', 'U', '<C-r>', opts)

-- Unmap arrow keys 
map('n', '<Up>', '<NOP>', opts)
map('n', '<Down>', '<NOP>', opts)
map('n', '<Left>', '<NOP>', opts)
map('n', '<Right>', '<NOP>', opts)

map('i', '<Up>', '<NOP>', opts)
map('i', '<Down>', '<NOP>', opts)
map('i', '<Left>', '<NOP>', opts)
map('i', '<Right>', '<NOP>', opts)


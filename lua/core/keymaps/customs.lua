local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Window Movement
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Move lines
map('n', '<A-k>', ':move -2<CR>', opts)
map('n', '<A-j>', ':move +1<CR>', opts)

map('x', '<A-k>', ":move '<-2<CR>gv", opts)
map('x', '<A-j>', ":move '>+1<CR>gv", opts)

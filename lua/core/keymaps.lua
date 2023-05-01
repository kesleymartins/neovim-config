local map = vim.api.nvim_set_keymap
local kmap = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<C-b>', ':Neotree focus<CR>', opts)
map('n', '<C-q>', ':bd<CR>', opts)

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Normal Mode
map('n', '<Space>nf', ':NvimTreeFocus<CR>', opts)         -- Focus on Nvim Tree
map('n', '<Space>nc', ':NvimTreeClose<CR>', opts)         -- Close Nvim Tree
map('n', '<A-Up>', ':move -2<CR>', opts)                  -- Move line Up
map('n', '<A-Down>', ':move +1<CR>', opts)                -- Move line Down

-- Visual Mode Only
map('x', '<A-Up>', ":move '<-2<CR>gv", opts)              -- Move line(s) Up
map('x', '<A-Down>', ":move '>+1<CR>gv", opts)            -- Move line(s) Down

-- Telescope
local telescope = require('telescope.builtin')
map('n', '<Space>ff', telescope.find_files, opts)         -- Open Telescope find files page
map('n', '<Space>fg', telescope.live_grep, opts)          -- Open Telescope live grep page

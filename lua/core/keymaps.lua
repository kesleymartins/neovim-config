local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Normal Mode
map('n', '<A-Up>', ':move -2<CR>', opts)                  -- Move line Up
map('n', '<A-Down>', ':move +1<CR>', opts)                -- Move line Down

-- Visual Mode Only
map('x', '<A-Up>', ":move '<-2<CR>gv", opts)    -- Move line(s) Up
map('x', '<A-Down>', ":move '>+1<CR>gv", opts)  -- Move line(s) Down

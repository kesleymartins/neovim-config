local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Normal Mode
map('n', '<Space>nf', ':NvimTreeFocus<CR>', opts)         -- Set focus on NvimTree
map('n', '<Space>nc', ':NvimTreeClose<CR>', opts)         -- Close NvimTree
map('n', '<Space>nr', ':NvimTreeRefresh<CR>', opts)       -- Refresh NvimTree
map('n', '<Space>ff', ':Telescope find_files<CR>', opts)  -- Telescope find_files 
map('n', '<Space>fg', ':Telescope live_grep<CR>', opts)   -- Telescope live_grep
map('n', '<C-q>', ':bd<CR>', opts)                        -- Close Buffer
map('n', '<A-Up>', ':move -2<CR>', opts)                  -- Move line Up
map('n', '<A-Down>', ':move +1<CR>', opts)                -- Move line Down

-- Visual Mode Only
map('x', '<A-Up>', ":move '<-2<CR>gv", opts)    -- Move line(s) Up
map('x', '<A-Down>', ":move '>+1<CR>gv", opts)  -- Move line(s) Down

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Normal Mode
map('n', '<C-b>', ':Neotree right focus<CR>', opts)   -- Focus Neotree
map('n', '<C-q>', ':bd<CR>', opts)                    -- Close Buffer
map('n', '<C-Up>', ':move -2<CR>', opts)              -- Move line Up
map('n', '<C-Down>', ':move +1<CR>', opts)            -- Move line Down
map('n', '<C-S-Right>', ':bnext<CR>', opts)           -- Next Buffer
map('n', '<C-S-Left>', ':bprevious<CR>', opts)        -- Previous Buffer

-- Visual Mode Only
map('x', '<C-Up>', ":move '<-2<CR>gv", opts)    -- Move line(s) Up
map('x', '<C-Down>', ":move '>+1<CR>gv", opts)  -- Move line(s) Down

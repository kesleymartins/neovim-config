local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Normal Mode
map('n', '<Space>nf', ':Neotree focus<CR>', opts)   -- Focus Neotree
map('n', '<Space>nt', ':Neotree toggle<CR>', opts)  -- Toggle Neotree
map('n', '<Space>nc', ':Neotree close<CR>', opts)         -- Close Neotree 
map('n', '<C-q>', ':bd<CR>', opts)                        -- Close Buffer
map('n', '<A-Up>', ':move -2<CR>', opts)                  -- Move line Up
map('n', '<A-Down>', ':move +1<CR>', opts)                -- Move line Down
map('n', '<C-S-Right>', ':bnext<CR>', opts)               -- Next Buffer
map('n', '<C-S-Left>', ':bprevious<CR>', opts)            -- Previous Buffer
map('n', '<Space>ff', ':Telescope find_files<CR>', opts)      -- Find files with Telescope

-- Visual Mode Only
map('x', '<A-Up>', ":move '<-2<CR>gv", opts)    -- Move line(s) Up
map('x', '<A-Down>', ":move '>+1<CR>gv", opts)  -- Move line(s) Down

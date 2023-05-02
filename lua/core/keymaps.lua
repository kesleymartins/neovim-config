local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Normal mode
map('n', '<C-b>', ':Neotree left focus<CR>', opts)  -- Focus Neotree
map('n', '<C-S-Down>', ':move +1<CR>', opts)        -- Move line Down
map('n', '<C-S-Up>', ':move -2<CR>', opts)          -- Move line Up
map('n', '<C-S-Right>', ':bnext<CR>', opts)         -- Next Buffer
map('n', '<C-S-Left>', ':bprevious<CR>', opts)      -- Previous Buffer
map('n', '<C-q>', ':bd<CR>', opts)                  -- Close Buffer

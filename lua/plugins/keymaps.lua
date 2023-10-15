local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Telescope
local telescope = require('telescope.builtin')
map('n', '<Space>ff', telescope.find_files, opts)         -- Open find files page
map('n', '<Space>fg', telescope.live_grep, opts)          -- Open live grep page
map('n', '<Space>fb', telescope.buffers, opts)            -- Open buffers page

-- Neo-tree 
map('n', '<Space>nc', ':Neotree close<CR>', opts)         -- Close 
map('n', '<Space>nf', ':Neotree focus<CR>', opts)         -- Focus

-- Aerial
map('n', '<Space>a', ':AerialToggle!<CR>')                -- Togle Aerial

-- LSP Disgnostics 
local diagnostic = vim.diagnostic
map('n', '<space>e', diagnostic.open_float)
map('n', '[d', diagnostic.goto_prev)
map('n', ']d', diagnostic.goto_next)
map('n', '<space>q', diagnostic.setloclist)



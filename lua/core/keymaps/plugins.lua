local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Telescope
local telescope = require('telescope.builtin')
map('n', '<Space>ff', telescope.find_files, opts)         -- Open find files page
map('n', '<Space>fg', telescope.live_grep, opts)          -- Open live grep page
map('n', '<Space>fb', telescope.buffers, opts)            -- Open buffers page

-- Nvim Tree
map('n', '<Space>nc', ':NvimTreeClose<CR>', opts)         -- Close 
map('n', '<Space>nf', ':NvimTreeFocus<CR>', opts)         -- Focus

-- Diff View
map('n', '<Space>do', ':DiffviewOpen<CR>', opts)          -- Open Diff view
map('n', '<Space>dh', ':DiffviewFileHistory<CR>', opts)   -- Open Diff view file history
map('n', '<Space>dc', ':DiffviewClose<CR>', opts)         -- Close Diff View

-- Aerial
map('n', '<Space>a', ':AerialToggle!<CR>')                -- Togle Aerial

-- LSP Disgnostics 
local diagnostic = vim.diagnostic
map('n', '<space>e', diagnostic.open_float)
map('n', '[d', diagnostic.goto_prev)
map('n', ']d', diagnostic.goto_next)
map('n', '<space>q', diagnostic.setloclist)

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Window Movement
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Use S-u for redo
keymap("n", "U", "<C-r>", opts)

-- Unmap arrow keys
keymap("n", "<Up>", "<NOP>", opts)
keymap("n", "<Down>", "<NOP>", opts)
keymap("n", "<Left>", "<NOP>", opts)
keymap("n", "<Right>", "<NOP>", opts)

keymap("i", "<Up>", "<NOP>", opts)
keymap("i", "<Down>", "<NOP>", opts)
keymap("i", "<Left>", "<NOP>", opts)
keymap("i", "<Right>", "<NOP>", opts)

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Mode between Windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
--
-- Make vertical split
keymap("n", "<Space>sv", "<C-w>v", opts)

-- Close window
keymap("n", "<Space>sx", ":close<CR>", opts)

-- Delete Buffer
keymap("n", "<Space>bd", ":bdelete<CR>", opts)

-- Use S-u for redo
keymap("n", "U", "<C-r>", opts)

-- Exit insert mode
keymap("i", "jk", "<ESC>l", opts)

-- Clear search highlights
keymap("n", "<Space>nh", ":nohl<CR>", opts)

-- Unmaps
keymap("n", "<Up>", "<NOP>", opts)
keymap("n", "<Down>", "<NOP>", opts)
keymap("n", "<Left>", "<NOP>", opts)
keymap("n", "<Right>", "<NOP>", opts)

keymap("i", "<Up>", "<NOP>", opts)
keymap("i", "<Down>", "<NOP>", opts)
keymap("i", "<Left>", "<NOP>", opts)
keymap("i", "<Right>", "<NOP>", opts)

keymap("n", "<Home>", "<NOP>", opts)
keymap("n", "<End>", "<NOP>", opts)
keymap("n", "<PageUp>", "<NOP>", opts)
keymap("n", "<PageDown>", "<NOP>", opts)

keymap("i", "<Home>", "<NOP>", opts)
keymap("i", "<End>", "<NOP>", opts)
keymap("i", "<PageUp>", "<NOP>", opts)
keymap("i", "<PageDown>", "<NOP>", opts)

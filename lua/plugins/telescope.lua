local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("telescope").setup()
    local builtin = require("telescope.builtin")

    keymap("n", "<Space>ff", builtin.find_files, opts)
    keymap("n", "<Space>fg", builtin.live_grep, opts)
    keymap("n", "<Space>fb", builtin.buffers, opts)
  end,
}

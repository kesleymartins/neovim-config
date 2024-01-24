local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup()

    keymap("n", "-", ":Oil<CR>", opts)
  end,
}

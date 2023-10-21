local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local neotree = require("neo-tree")

    neotree.setup({
      window = {
        position = "float",
      },
    })

    keymap("n", "<Space>nc", ":Neotree close<CR>", opts)
    keymap("n", "<Space>nf", ":Neotree focus<CR>", opts)
  end,
}

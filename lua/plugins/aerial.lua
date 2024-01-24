local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

return {
  "stevearc/aerial.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local aerial = require("aerial")

    aerial.setup({
      on_attach = function(bufnr)
        keymap("n", "{", ":AerialPrev<CR>", { buffer = bufnr })
        keymap("n", "}", ":AerialNext<CR>", { buffer = bufnr })
        keymap("n", "<Space>a", ":AerialToggle!<CR>", opts)
      end,
    })
  end,
}

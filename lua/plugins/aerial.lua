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
        keymap("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr }, opts)
        keymap("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr }, opts)
        keymap("n", "<Space>a", ":AerialToggle!<CR>")
      end,
    })
  end,
}

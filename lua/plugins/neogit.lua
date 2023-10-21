local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "sindrets/diffview.nvim",
    "ibhagwan/fzf-lua",
  },
  config = function()
    require("neogit").setup()

    keymap("n", "<Space>ng", ":Neogit<CR>", opts)
  end,
}

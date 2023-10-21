return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    local catppuccin = require("catppuccin")

    catppuccin.setup({
      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
        aerial = true,
        fidget = true,
        mason = true,
        neotree = true,
      },
    })

    vim.cmd([[colorscheme catppuccin]])
  end,
}

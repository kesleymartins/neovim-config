return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local bufferline = require("bufferline")

    bufferline.setup({
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
      options = {
        separator_style = "slant",
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
          },
        },
      },
    })
  end,
}

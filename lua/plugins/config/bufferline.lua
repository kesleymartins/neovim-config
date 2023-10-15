local config = {
  highlights = require("catppuccin.groups.integrations.bufferline").get(),
  options = {
    separator_style = "slant",
    offsets = {
      {
        filetype = "neo-tree",
        text = "File Explorer",
      }
    }
  }
}

require('bufferline').setup(config)

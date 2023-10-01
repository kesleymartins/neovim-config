local config = {
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

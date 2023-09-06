local config = {
  options = {
    separator_style = "slant",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
      }
    }
  }
}

require('bufferline').setup(config)

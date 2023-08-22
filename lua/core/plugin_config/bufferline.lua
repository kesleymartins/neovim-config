require('bufferline').setup({
  options = {
    hover = {
      enabled = true,
      reveal = {'close'}
    },
    separator_style = "slant", -- slant slope thick thin
    offsets = {
      {
        filetype = "NvimTree",
        text = "~ NvimTree ~",
        text_align = "center",
        separator = true,
      }
    }
  }
})

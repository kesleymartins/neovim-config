require('nvim-tree').setup({
  view = {
    width = 40
  },
  filters = {
    dotfiles = true, 
    git_ignored = true
  }
})
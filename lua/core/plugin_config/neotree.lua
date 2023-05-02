require('neo-tree').setup({
  default_component_configs = {
    icon = {
      folder_empty = "-"
    },
    git_status = {
      symbols = {
        added = "",
        modified = "[M]",
        deleted = "",
        renamed = "",
        untracked = "[U]",
        ignored = "",
        unstaged = "",
        staged = "[S]",
        conflit = "[!]"
      }
    }
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_by_name = {
        ".git"
      }
    }
  }
})

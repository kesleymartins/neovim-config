local opts = {noremap = true}
local map = vim.keymap.set
-- Setup
require("buffer_manager").setup({
  select_menu_item_commands = {
    v = {
      key = "<C-v>",
      command = "vsplit"
    },
    h = {
      key = "<C-h>",
      command = "split"
    }
  },
  focus_alternate_buffer = false,
  short_file_names = true,
  short_term_names = true,
  loop_nav = false,
})
-- Navigate buffers bypassing the menu
local bmui = require("buffer_manager.ui")

-- Just the menu
map({ 't', 'n' }, '<C-b>', bmui.toggle_quick_menu, opts)

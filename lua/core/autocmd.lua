local create_cmd = vim.api.nvim_create_autocmd

create_cmd('VimEnter', {
  desc = 'Start Neotree',
  command = "Neotree right toggle"
})

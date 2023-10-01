local map = vim.keymap.set

require('aerial').setup({
  on_attach = function(bufnr)
    map('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
    map('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
  end
})

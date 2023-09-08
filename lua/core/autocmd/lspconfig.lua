local create_autocmd = vim.api.nvim_create_autocmd
local create_augroup = vim.api.nvim_create_augroup
local map = vim.keymap.set
local inspect = vim.inspect
local lsp = vim.lsp
local bo = vim.bo

create_autocmd('LspAttach', {
  group = create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    map('n', 'gD', lsp.buf.declaration, opts)
    map('n', 'gd', lsp.buf.definition, opts)
    map('n', 'K', lsp.buf.hover, opts)
    map('n', 'gi', lsp.buf.implementation, opts)
    map('n', '<C-k>', lsp.buf.signature_help, opts)
    map('n', '<space>wa', lsp.buf.add_workspace_folder, opts)
    map('n', '<space>wr', lsp.buf.remove_workspace_folder, opts)
    map('n', '<space>wl', function()
      print(inspect(lsp.buf.list_workspace_folders()))
    end, opts)
    map('n', '<space>D', lsp.buf.type_definition, opts)
    map('n', '<space>rn', lsp.buf.rename, opts)
    map({ 'n', 'v' }, '<space>ca', lsp.buf.code_action, opts)
    map('n', 'gr', lsp.buf.references, opts)
    map('n', '<space>f', function()
      lsp.buf.format { async = true }
    end, opts)
  end,
})


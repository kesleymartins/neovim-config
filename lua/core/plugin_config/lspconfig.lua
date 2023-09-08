require('mason').setup()

local lspconfig = require('lspconfig')

local mason_lsp = require('mason-lspconfig')
mason_lsp.setup()

mason_lsp.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({})
  end
})



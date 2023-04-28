require('mason').setup()

local servers = require('core.plugin_config.lsp.servers')

require('mason-lspconfig').setup({
  ensure_installed = servers
})

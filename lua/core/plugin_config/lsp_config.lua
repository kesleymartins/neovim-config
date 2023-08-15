local default_config_servers = {
  'cssls',          -- CSS
  'jsonls',         -- JSON
  'tsserver',       -- Javascript | Typescript
  'lua_ls',         -- Lua
  'solargraph',     -- Ruby
  'rust_analyzer',  -- Rust
  'volar',          -- Vue
  'html',           -- HTML
}

local custom_config_servers = {
  'emmet_ls',       -- Emmet
}

-- Join all servers
local all_servers = {}

for _, server in ipairs(default_config_servers) do
  table.insert(all_servers, server)
end

for _, server in ipairs(custom_config_servers) do
  table.insert(all_servers, server)
end

-- Mason Config
require('mason').setup()

require('mason-lspconfig').setup({
  ensure_installed = all_servers 
})

-- LSP setup
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- LSP default config
for _, lsp in ipairs(default_config_servers) do
  lspconfig[lsp].setup({
    capabilities = capabilities
  })
end

-- LSP custom config
lspconfig["emmet_ls"].setup({
  capabilities = capabilities,
  filetypes = { "html" }
})


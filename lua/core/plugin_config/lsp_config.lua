local servers = {
  'cssls',          -- CSS
  'jsonls',         -- JSON
  'tsserver',       -- Javascript | Typescript
  'lua_ls',         -- Lua
  'solargraph',     -- Ruby
  'rust_analyzer',  -- Rust
  'volar',          -- Vue
  'html',           -- HTML
  'phpactor',       -- PHP
}

-- Mason Config
require('mason').setup()

require('mason-lspconfig').setup({
  ensure_installed = servers
})

-- LSP config
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    capabilities = capabilities
  })
end


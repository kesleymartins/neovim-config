local servers = {
  'bashls',         -- bash
  'clangd',         -- C/C++
  'cssls',          -- CSS
  'jsonls',         -- JSON
  'tsserver',       -- Javascript | Typescript
  'lua_ls',         -- Lua
  'solargraph',     -- Ruby
  'rust_analyzer',  -- Rust
  'svelte',         -- Svelte
  'vuels',          -- Vue
  'html',           -- HTML
  'emmet_ls'        -- Emmet
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


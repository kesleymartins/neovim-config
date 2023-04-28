require('mason').setup()

require('mason-lspconfig').setup({
  ensure_installed = {
    'bashls',         -- bash
    'clangd',         -- C/C++
    'cssls',          -- CSS
    'jsonls',         -- JSON
    'tsserver',       -- Javascript | Typescript
    'lua_ls',         -- Lua
    'ruby_ls',        -- Ruby
    'rust_analyzer',  -- Rust
    'svelte',         -- Svelte
    'volar',          -- Vue
    'html',           -- HTML
    'emmet_ls',       -- Emmet
  }
})

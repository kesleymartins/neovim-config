return {
  "neovim/nvim-lspconfig",
  dependencies = {
    'hrsh7th/nvim-cmp',
    "hrsh7th/cmp-nvim-lsp",
    "williamboman/mason-lspconfig.nvim"
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lspconfig = require('lspconfig')
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    require("mason-lspconfig").setup()

    local capabilities = vim.tbl_deep_extend(
      'force',
      lspconfig.util.default_config.capabilities,
      cmp_nvim_lsp.default_capabilities()
    )

    local on_attach = function(_, bufnr)
      local keymap = vim.keymap
      local opts = { noremap = true, silent = true, buffer = bufnr }

      keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)            -- show definition, references
      keymap.set("n", "gD", vim.lsp.buf.declaration, opts)                        -- go to declaration
      keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)           -- show lsp definitions
      keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)       -- show lsp implementations
      keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)      -- show lsp type definitions
      keymap.set({ "n", "v" }, "<Space>ca", vim.lsp.buf.code_action, opts)        -- see available code actions, in visual mode will apply to selection
      keymap.set("n", "<Space>rn", vim.lsp.buf.rename, opts)                      -- smart rename
      keymap.set("n", "<Space>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file
      keymap.set("n", "<Space>d", vim.diagnostic.open_float, opts)                -- show diagnostics for line
      keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)                       -- jump to previous diagnostic in buffer
      keymap.set("n", "]d", vim.diagnostic.goto_next, opts)                       -- jump to next diagnostic in buffer
      keymap.set("n", "K", vim.lsp.buf.hover, opts)                               -- show documentation for what is under cursor
      keymap.set("n", "<Space>rs", ":LspRestart<CR>", opts)                       -- mapping to restart lsp if necessary
    end

    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })
  end
}

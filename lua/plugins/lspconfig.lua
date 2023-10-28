return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "williamboman/mason-lspconfig.nvim",
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    require("mason-lspconfig").setup()

    local capabilities =
      vim.tbl_deep_extend("force", lspconfig.util.default_config.capabilities, cmp_nvim_lsp.default_capabilities())

    local on_attach = function(_, bufnr)
      local keymap = vim.keymap.set
      local opts = { noremap = true, silent = true, buffer = bufnr }

      keymap("n", "K", vim.lsp.buf.hover, opts)
      keymap("n", "gD", vim.lsp.buf.declaration, opts)
      keymap("n", "[d", vim.diagnostic.goto_prev, opts)
      keymap("n", "]d", vim.diagnostic.goto_next, opts)
      keymap("n", "<Space>rs", ":LspRestart<CR>", opts)
      keymap("n", "<Space>rn", vim.lsp.buf.rename, opts)
      keymap("n", "<Space>d", vim.diagnostic.open_float, opts)
      keymap("n", "gR", ":Telescope lsp_references<CR>", opts)
      keymap("n", "gd", ":Telescope lsp_definitions<CR>", opts)
      keymap("n", "gi", ":Telescope lsp_implementations<CR>", opts)
      keymap("n", "gt", ":Telescope lsp_type_definitions<CR>", opts)
      keymap({ "n", "v" }, "<Space>ca", vim.lsp.buf.code_action, opts)
      keymap("n", "<Space>D", ":Telescope diagnostics bufnr=0<CR>", opts)
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

      lspconfig["phpactor"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      }),

      lspconfig["gopls"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      }),

      lspconfig["solargraph"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        format = true,
      }),
    })
  end,
}

local keymap = vim.keymap.set

return {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      lua = { "luacheck" },
      php = { "phpmd" },
      go = { "golangci-lint" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        lint.try_lint()
      end,
    })

    keymap("n", "<Space>ll", function()
      lint.try_lint()
    end)
  end,
}

return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    require("mini.animate").setup()
    require("mini.comment").setup()
    require("mini.cursorword").setup()
    require("mini.move").setup()
    require("mini.pairs").setup()

    require("mini.indentscope").setup({
      symbol = "│",
    })
  end,
}


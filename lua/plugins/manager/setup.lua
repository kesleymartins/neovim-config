require('lazy').setup({
  { "norcalli/nvim-colorizer.lua" },
  { "windwp/nvim-autopairs" },
  { "numToStr/Comment.nvim" },
  { "lewis6991/gitsigns.nvim" },
  { "nvim-treesitter/nvim-treesitter" },
  { "sontungexpt/stcursorword" },
  {
    'echasnovski/mini.animate',
    version = '*'
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {}
  },
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "sindrets/diffview.nvim",
      "ibhagwan/fzf-lua",
    },
    config = true
  },
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
  },
  {
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  },
  {
    'stevearc/aerial.nvim',
    dependencies = {
       "nvim-treesitter/nvim-treesitter",
       "nvim-tree/nvim-web-devicons"
    },
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  }
},
{ })

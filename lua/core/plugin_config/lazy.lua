local plugins = {
  { "nvim-tree/nvim-tree.lua" },
  { "wakatime/vim-wakatime" },
  { "norcalli/nvim-colorizer.lua" },
  { "windwp/nvim-autopairs" },
  { "numToStr/Comment.nvim" },
  { "lewis6991/gitsigns.nvim" },
  { "sindrets/diffview.nvim" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "nvim-treesitter/nvim-treesitter" },
  { "sainnhe/sonokai" },
  { "sontungexpt/stcursorword" },
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
}

local opts = {}

require('lazy').setup(plugins, opts)

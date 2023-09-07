local plugins = {
  "nvim-tree/nvim-tree.lua",
  "wakatime/vim-wakatime",
  "norcalli/nvim-colorizer.lua",
  "windwp/nvim-autopairs",
  "numToStr/Comment.nvim",
  "lewis6991/gitsigns.nvim",
  "sindrets/diffview.nvim",
  "lukas-reineke/indent-blankline.nvim",
  { 
    "catppuccin/nvim", 
    name = "catppuccin" 
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

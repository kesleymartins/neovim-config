local plugins = {
  "nvim-tree/nvim-tree.lua",
  "wakatime/vim-wakatime",
  "norcalli/nvim-colorizer.lua",
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  }
}

local opts = {}

require('lazy').setup(plugins, opts)

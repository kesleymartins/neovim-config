local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- My Plugins
  use("lewis6991/gitsigns.nvim")                -- Git integration
  use("nvim-treesitter/nvim-treesitter")        -- Treesitter
  use("norcalli/nvim-colorizer.lua")            -- Colorizer
  use("windwp/nvim-autopairs")                  -- To autoclose ({"''"})
  use("wakatime/vim-wakatime")                  -- Wakatime plugin
  use("lukas-reineke/indent-blankline.nvim")    -- Indentation guideline

  use({
    'nvim-tree/nvim-tree.lua',
    requires = {'nvim-tree/nvim-web-devicons'},
  })

  -- Themes
  use({ "catppuccin/nvim", as = "catppuccin" })
  use({ "Everblush/nvim", name = "everblush" })

  -- Mason and LSP
  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  })

  -- Auto complete
  use("hrsh7th/nvim-cmp")     -- Code suggestions
  use("hrsh7th/cmp-nvim-lsp") -- LSP based suggestions
  use("hrsh7th/cmp-path")     -- Folder path based suggestions
  use("hrsh7th/cmp-buffer")   -- Buffer content based suggestions
  use("hrsh7th/cmp-cmdline")  -- Command line suggestions 

  -- Snippets | nvim-cmp dependencies
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")

  use({
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  })

  -- Lua line
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  })

  -- Bufferline
  use({
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  })
  -- End of my plugins

  if packer_bootstrap then
    require('packer').sync()
  end
end)

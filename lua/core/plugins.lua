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

  -- Themes
  use({ "catppuccin/nvim", as = "catppuccin" })
  use({ "Everblush/nvim", name = "everblush" })

  -- LSP servers
  use({"williamboman/mason.nvim"})
  use({"williamboman/mason-lspconfig.nvim"})
  use({"neovim/nvim-lspconfig"})

  -- Auto complete
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-buffer")

  -- Snippets 
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")

  -- Buffer Switcher
  use({
    'j-morano/buffer_manager.nvim',
    requires = use 'nvim-lua/plenary.nvim'
  })

  -- Bottom line with info 
  use({
    'nvim-lualine/lualine.nvim',
    requires = 'nvim-tree/nvim-web-devicons'
  })

  -- File explorer 
  use({
    'nvim-tree/nvim-tree.lua',
    requires = 'nvim-tree/nvim-web-devicons',
  })

  -- Show buffers as tabs on top 
  use({
    'akinsho/bufferline.nvim', tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  })

  -- File finder
  use({
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = 'nvim-lua/plenary.nvim'
  })
  -- End of my plugins

  if packer_bootstrap then
    require('packer').sync()
  end
end)

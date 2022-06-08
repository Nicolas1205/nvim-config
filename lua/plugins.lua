vim.cmd [[packadd packer.nvim]]

local packer = require("packer")

return packer.startup(function()  

  use 'wbthomason/packer.nvim' 
  
  use 'lukas-reineke/indent-blankline.nvim'

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }
  
  use {
    "catppuccin/nvim", 
    as = "catppuccin", 
  }

  use 'nvim-treesitter/nvim-treesitter'

  use 'neovim/nvim-lspconfig'

  use { 
    'hrsh7th/nvim-cmp', 
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp', 
      'hrsh7th/cmp-path', 

    },
  }

  --use {
   -- 'ray-x/lsp_signature',
    --config = function()
     -- require("plugins.lsp-signature")
    --end, 
  --}


  use 'nvim-lua/plenary.nvim'

  use { 
    'nvim-telescope/telescope.nvim', 
    cmd = "Telescope", 
  }

  use { 
    'lewis6991/gitsigns.nvim', 
    opt = true, 
    config = function() 
      require("plugins.gitsigns")
    end, 
  }

  use {
    'SmiteshP/nvim-gps', 
    config = function() 
      require("plugins.nvim-gps")
    end,
  }

  use { 
    'kyazdani42/nvim-web-devicons'
  }

  
  -- MORE PLUGINS
  use  {
    'folke/persistence.nvim',
    event = "BufReadPre", 
    module = "persistence", 
    config = function()
      require("persistence").setup()
    end,
  }

  use {
    'goolord/alpha-nvim', 
    config = function() 
      require("alpha").setup()
    end,
  }

  
end) 



vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  "rose-pine/neovim",
	  as = "rose-pine",
	  config = function()
		  require("rose-pine").setup({ styles = { italic = false } })
		  vim.cmd("colorscheme rose-pine")
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use("nvim-treesitter/nvim-treesitter-context")

  use('ThePrimeagen/harpoon')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
          }
      end
  })
  use("folke/zen-mode.nvim")

  use("eandrju/cellular-automaton.nvim")

end)

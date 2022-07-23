return require('packer').startup(function(use)
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	-- nvim helper functions by tjdevries
	use 'nvim-lua/plenary.nvim'

	-- styling
	use 'gruvbox-community/gruvbox'
    use 'folke/tokyonight.nvim'

    -- formatting
    use 'tpope/vim-surround'

	-- git
	use 'TimUntersberger/neogit'

	use('nvim-treesitter/nvim-treesitter', {
       run = ':TSUpdate'
    })

	-- navigation
	use 'nvim-telescope/telescope.nvim'

	-- statusline
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'

    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use {'neoclide/coc.nvim', branch = 'release'}

end)

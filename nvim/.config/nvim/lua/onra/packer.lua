return require('packer').startup(function()
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	-- nvim helper functions by tjdevries
	use 'nvim-lua/plenary.nvim'

	-- styling
	use 'gruvbox-community/gruvbox'

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
end)

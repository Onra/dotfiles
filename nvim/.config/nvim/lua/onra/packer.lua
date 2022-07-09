return require('packer').startup(function()
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	-- nvim helper functions by tjdevries
	use 'nvim-lua/plenary.nvim'

	-- styling
	use 'gruvbox-community/gruvbox'

	-- git
	use 'TimUntersberger/neogit'
end)

return {
	"nvim-treesitter/nvim-treesitter",
	build= ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed ={"lua","python","xml","json","yaml","c","cpp","cmake","bash","gitignore","html","latex","bibtex","make","vim","vimdoc"},
			hightlight = {enable = true},
			indent = {enable =true},
      autoinstall = true
			})
	end
	}

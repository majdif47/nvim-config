return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"lua",
				"vim",
				"javascript",
				"c",
				"css",
				"dart",
				"html",
				"java",
				"json",
				"python",
				"scss",
				"typescript",
				"rust",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	build = ":TSUpdate",
	config = function ()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"vim",
				"lua",
				"javascript",
				"css",
				"dockerfile",
				"bash",
				"go",
				"scss",
				"typescript",
				"yaml",
			},
			sync_install = false,
			highlight = { enable = true },
--			indent = { enable = true },
		})
	end
}

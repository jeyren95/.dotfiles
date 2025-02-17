return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"vim",
				"lua",
				"gitignore",
				"json",
				-- frontend
				"html",
				"css",
				"scss",
				"javascript",
				"typescript",
				"tsx",
				-- backend
				"bash",
				"go",
				"dockerfile",
				"yaml",
				"sql",
				"prisma"
			},
			sync_install = false,
			highlight = { enable = true },
			--			indent = { enable = true },
		})
	end,
}

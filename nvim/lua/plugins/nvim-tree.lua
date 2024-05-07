return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.g.loaded_netrw = 1 -- prevents from using Explore, Lexplore commands
		vim.g.loaded_netrwPlugin = 1

		local nvim_tree = require("nvim-tree")

		-- keymaps
		nvim_tree.setup({
			update_focused_file = {
					enable = true,
					update_cwd = true,
					ignore_list = {},
			},
			diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    	},
			renderer = {
				highlight_git = true,
				root_folder_modifier = ":t",
				icons = {
					show = {
							file = true,
							folder = true,
							folder_arrow = true,
							git = true,
					},
					glyphs = {
							default = "",
							symlink = "",
							git = {
									unstaged = "",
									staged = "S",
									unmerged = "",
									renamed = "➜",
									deleted = "",
									untracked = "U",
									ignored = "◌",
							},
							folder = {
									default = "",
									open = "",
									empty = "",
									empty_open = "",
									symlink = "",
							},
					},
				},
			},
		})
	end,
}

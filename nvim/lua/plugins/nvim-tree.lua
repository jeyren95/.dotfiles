return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.g.loaded_netrw = 1 -- prevents from using Explore, Lexplore commands
		vim.g.loaded_netrwPlugin = 1

		local nvim_tree = require("nvim-tree")
		local api = require("nvim-tree.api")

		-- keymaps
		local opts = { noremap = true, silent = true }
		local keymap = vim.keymap
		local on_attach = function(client, bufnr)
			opts.bufnr = bufnr
			-- default 
			api.config.mappings.default_on_attach(bufnr)

			-- custom
			keymap.set("n", "<leader>tt", api.tree.toggle, opts)
			keymap.set("n", "<leader>s", api.node.open.vertical, opts)
			keymap.set("n", "<leader>n", api.fs.create, opts)
			keymap.set("n", "<leader>d", api.fs.remove, opts)
			keymap.set("n", "<leader>c", api.fs.copy.node, opts)
			keymap.set("n", "<leader>p", api.fs.paste, opts)
			keymap.set("n", "<leader>r", api.fs.rename, opts)
		end

		nvim_tree.setup({
			on_attach = on_attach,
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

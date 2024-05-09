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
			-- api.config.mappings.default_on_attach(bufnr)

			-- custom
			keymap.set("n", "<leader>tt", api.tree.toggle, opts)
			keymap.set("n", "<leader>s", api.node.open.vertical, opts)
			keymap.set("n", "<leader>n", api.fs.create, opts)
			keymap.set("n", "<leader>d", api.fs.remove, opts)
			keymap.set("n", "<leader>y", api.fs.copy.node, opts)
			keymap.set("n", "<leader>p", api.fs.paste, opts)
			keymap.set("n", "<leader>r", api.fs.rename, opts)
			keymap.set("n", "<BS>", api.node.navigate.parent_close, opts)
			keymap.set("n", "<CR>", api.node.open.edit, opts)
			keymap.set("n", "E", api.tree.expand_all, opts)
			keymap.set("n", "]e", api.node.navigate.diagnostics.next, opts)
			keymap.set("n", "[e", api.node.navigate.diagnostics.prev, opts)
			keymap.set("n", "<leader>f", api.live_filter.start, opts)
			keymap.set("n", "<leader>o", api.node.open.edit, opts)
			keymap.set("n", "<leader>x", api.fs.cut, opts)
			keymap.set("n", "<leader>yn", api.fs.copy.filename, opts)

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

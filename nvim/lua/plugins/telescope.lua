-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
      dependencies = {
				'nvim-lua/plenary.nvim',
				'nvim-tree/nvim-web-devicons',
				-- for preview of media files
				'nvim-telescope/telescope-media-files.nvim',
				'nvim-lua/popup.nvim',
			},
			config = function()
				local telescope = require("telescope")
				local actions = require("telescope.actions")

				-- media preview extension
				telescope.load_extension("media_files")

				telescope.setup({
					defaults = {
						mappings = {
							i = {
								["<C-j>"] = actions.move_selection_next,
								["<C-k>"] = actions.move_selection_previous,
							},
						},
					}
				})
			end,
    }

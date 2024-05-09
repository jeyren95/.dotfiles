return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				tab_size = 21,
				offsets = {
					{ filetype = "NvimTree", text = "", padding = 1 },
				},
			}
		})
	end
}

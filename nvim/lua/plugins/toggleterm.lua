return {
	"akinsho/toggleterm.nvim",
	config = function ()
		local toggleterm = require("toggleterm")
		toggleterm.setup({
			size = 28,
			open_mapping = [[<c-\>]],
			direction = "float",
		})
	end
}

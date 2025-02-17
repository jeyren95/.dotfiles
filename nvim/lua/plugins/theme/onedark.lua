return {
	"navarasu/onedark.nvim",
	config = function()
		require("onedark").setup({
			style = "darker",
			toggle_style_key = "<leader>ts",
		})
	end,
}

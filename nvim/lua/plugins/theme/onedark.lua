return {
	"navarasu/onedark.nvim",
	config = function()
		require("onedark").setup({
			style = "deep",
			toggle_style_key = "<leader>ts",
			highlights = {
				["@tag"] = { fg = "$red" },
				["@tag.tsx"] = { fg = "$yellow" },
				["@tag.attribute"] = { fg = "$orange" },
				["@tag.delimiter"] = { fg = "none" }
			}
		})
	end,
}

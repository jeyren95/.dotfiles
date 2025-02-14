return {
	"folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
	  require("tokyonight").setup({
		  style = "night",
		  styles = {
			  comments = { italic = false },
			  keywords = { italic = false },
		  }
	  })
  end,
}

return {
	"nvimtools/none-ls.nvim",
	config = function ()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting
		local sources = {
			formatting.prettierd,
			formatting.stylua,
			formatting.gofmt,
			formatting.yamlfmt,
		}

		null_ls.setup({
			sources = sources,
		})
	end
}

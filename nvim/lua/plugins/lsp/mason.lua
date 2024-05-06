return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim" -- acts as the bridge between mason and nvim-lspconfig
	},
	config = function()
		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"tsserver",
				"html",
				"emmet_ls",
				"gopls",
				"cssls",
				"eslint",
				"lua_ls",
				"jsonls",
				"sqlls",
				"tailwindcss",
				"dockerls",
				"docker_compose_language_service",
				"bashls",
			}
		})
	end
}

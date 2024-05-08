return {

	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		-- diagnostics config
		local signs = {
			{ name = "DiagnosticSignError", text = "" },
			{ name = "DiagnosticSignWarn", text = "" },
			{ name = "DiagnosticSignHint", text = "" },
			{ name = "DiagnosticSignInfo", text = "" },
		}

		for _, sign in ipairs(signs) do
			vim.fn.sign_define(sign.name, { texth1 = sign.name, text = sign.text, numh1 = "" })
		end

		local config = {
			virtual_text = false,
			signs = {
				active = signs
			},
			underline = true,
    	severity_sort = true,
		}
		vim.diagnostic.config(config)

		-- keymaps
		local keymap = vim.api.nvim_buf_set_keymap
		local opts = { noremap = true, silent = true }
		local on_attach = function(client, bufnr)
			opts.desc = "Show diagnostics"
			keymap(bufnr, "n", "gof", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
			keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
			keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
			keymap(bufnr, "n", "gh", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
			keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
		end

		-- capabilities
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		lspconfig.tsserver.setup({
			on_attach = on_attach,
		})
		lspconfig.html.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
		lspconfig.emmet_ls.setup({
			on_attach = on_attach,
		})
		lspconfig.gopls.setup({
			on_attach = on_attach,
		})
		lspconfig.cssls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
		lspconfig.eslint.setup({
			on_attach = on_attach,
		})
		lspconfig.lua_ls.setup({
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = { 'vim' }
					}
				}
			}
		})
		lspconfig.sqls.setup({
			on_attach = on_attach,
		})
		lspconfig.tailwindcss.setup({
			on_attach = on_attach,
		})
		lspconfig.dockerls.setup({
			on_attach = on_attach,
		})
		lspconfig.docker_compose_language_service.setup({
			on_attach = on_attach,
		})
		lspconfig.bashls.setup({
			on_attach = on_attach,
		})

	end
}

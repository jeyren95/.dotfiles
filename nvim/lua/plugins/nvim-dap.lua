return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local keymap = vim.keymap

		-- keymaps
		local opts = { noremap = true, silent = true }
		keymap.set("n", "<leader>tb", dap.toggle_breakpoint, opts)
		keymap.set("n", "<leader>sb", dap.set_breakpoint, opts)
		keymap.set("n", "<leader>c", dap.continue, opts)
		keymap.set("n", "<leader>si", dap.step_into, opts)
		keymap.set("n", "<leader>so", dap.step_out, opts)

		-- dap ui config
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}

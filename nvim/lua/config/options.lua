vim.opt.tabstop = 2 -- number of spaces used for each tab
vim.opt.cmdheight = 2 -- command line height
vim.opt.number = true -- whether to show line number
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.relativenumber = true -- number of lines relative from the cursor
vim.opt.shiftwidth = 2 -- number of spaaces used for each indent
vim.opt.smartindent = true -- smart indenting when starting a new line
vim.opt.smartcase = true -- override the ignorecase option if search pattern contains uppercase
vim.opt.splitright = true -- splits the new window to the right
vim.opt.mouse = "a" -- allow mouse to: be used in neovim

local function set_statuscolumn()
	if vim.bo.filetype == "NvimTree" then
		vim.opt.statuscolumn = "%s"
	else
		vim.opt.statuscolumn = "%s %l %r "
	end
end

-- Auto-command to update statuscolumn per buffer
vim.api.nvim_create_autocmd("BufEnter", {
	callback = set_statuscolumn,
})

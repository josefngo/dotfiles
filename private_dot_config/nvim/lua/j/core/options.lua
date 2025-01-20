vim.opt.number = true

-- for RUBY LSP i think
vim.fn.setenv("PATH", vim.fn.expand("/opt/homebrew/opt/ruby/bin:$PATH"))

-- vim.opt.wrap = false
--

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.breakindent = true

vim.opt.mouse = "a"

-- smarter search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"

vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

-- highlight current line
vim.opt.cursorline = true

vim.opt.scrolloff = 13

-- true color
vim.opt.termguicolors = true

vim.opt.relativenumber = true

-- disable swap
vim.opt.swapfile = false

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

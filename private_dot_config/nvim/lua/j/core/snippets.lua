-- Runs a ruby file in nvim only if file extension is rb
vim.api.nvim_create_user_command("RunRuby", function()
	local file = vim.fn.expand("%:p") -- Get the absolute path of the current file
	if vim.fn.fnamemodify(file, ":e") == "rb" then
		vim.cmd("!ruby " .. vim.fn.shellescape(file))
	else
		print("This is not a Ruby (.rb) file!")
	end
end, {})
vim.keymap.set("n", "<leader>rr", ":RunRuby<CR>", { desc = "Run current file in Ruby" })
--

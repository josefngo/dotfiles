return {
	-- TODO: example todo something in telescope
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local telescope = require("telescope")
		-- local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				-- mappings = {
				-- 	i = {
				-- 		["c-enter"] = "to_fuzzy_refine",
				-- 	},
				-- },
			},
		})

		-- set keymaps
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Telescope TODO items" })
	end,
}

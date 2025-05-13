return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
	"nvim-lua/plenary.nvim",
	"nvim-treesitter/nvim-treesitter",
    },
    config = function()
	local telescope = require("telescope")
	local builtin = require("telescope.builtin")

	telescope.setup({
	    defaults = {
		layout_config = {
		    horizontal = {
			preview_width = 0.6,
		    },
		},
	    },
	})

	local map = vim.keymap.set
	map("n", "<leader>pf", builtin.find_files, { desc = "Telescope find files" })
	map("n", "<leader>pb", builtin.buffers, { desc = "Telescope buffers" })
	map("n", "<leader>ph", builtin.help_tags, { desc = "Telescope help tags" })


	require("config.telescope.multigrep").setup()
    end,
}

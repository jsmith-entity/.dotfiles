return {
	"nvim-treesitter/nvim-treesitter-context",
	config = function()
		require("treesitter-context").setup{
			enable = false,
		}

		vim.keymap.set("n", "<leader>pc", function()
			require("treesitter-context").toggle()
		end, { desc = "Preview Treesitter Context" })
	end
}

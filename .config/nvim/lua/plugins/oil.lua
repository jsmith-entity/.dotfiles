return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			columns = {
				"permissions",
				"icon",
			},
			view_options = {
				show_hidden = true,
				sort = {
					{ "type", "asc" },
					{ "name", "asc" }
				}
			},
		})
	end
}

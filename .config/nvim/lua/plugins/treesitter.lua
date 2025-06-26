return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	opts = {
		highlight = { enable = true },
		indent = { enable = true },
		ensure_installed = {
			"lua",
			"javascript",
			"jsdoc",
			"bash",
			"json",
			"markdown",
			"regex",
			"xml"
		},
		sync_install = false,
		auto_install = true,
	}
}

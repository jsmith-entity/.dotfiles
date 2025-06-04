return {
    {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
	    { "saghen/blink.cmp" },
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim", config = function() end },
		{
			"folke/lazydev.nvim",
			ft = "lua", -- only load on lua files
			opts = {
				library = {
					-- See the configuration section for more details
					-- Load luvit types when the `vim.uv` word is found
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
	},
	config = function()
	    local capabilities = require("blink.cmp").get_lsp_capabilities()

	    require("mason").setup()
	    require("mason-lspconfig").setup({
			capabilities = capabilities,
	    })

		vim.diagnostic.config({
			virtual_text = true
		})

		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostics as floating window"} )
	end,
    },
}

return {
    "saghen/blink.cmp",
    version = "1.*",
    opts = {
	keymap = {
	    ["<C-y>"] = {}, -- unbind default
	    ["<C-Space>"] = { "select_and_accept" },
	},

	appearance = {
	    use_nvim_cmp_as_default = true,
	    nerd_font_variant = "mono"
	},

	signature = { enabled = true },
    },
}

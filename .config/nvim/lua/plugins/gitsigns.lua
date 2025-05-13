return {
    "lewis6991/gitsigns.nvim",
    opts = {
	on_attach = function(bufnr)
	    local gitsigns = package.loaded.gitsigns

	    vim.keymap.set("n", "<leader>gv", gitsigns.preview_hunk, { buffer = bufnr, desc = "Preview git hunk"})
	    vim.keymap.set("n", "<leader>gp", gitsigns.prev_hunk, { buffer = bufnr, desc = "Previous git hunk"})
	    vim.keymap.set("n", "<leader>gn", gitsigns.next_hunk, { buffer = bufnr, desc = "Next git hunk" })
	end,
    }
}

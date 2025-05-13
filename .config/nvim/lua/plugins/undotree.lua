return {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
	local undotree = require("undotree")

	undotree.setup()

	vim.keymap.set("n", "<leader>u", undotree.toggle, { desc = "Open undotree"})
    end
}

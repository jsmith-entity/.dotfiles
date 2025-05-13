vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<A-k>", ":m-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<A-j>", ":m\'>+<CR>gv=gv", { noremap = true, silent =true })

vim.keymap.set("n", "<C-k>", "10k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "10j", { noremap = true, silent = true })

-- Quickfix
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

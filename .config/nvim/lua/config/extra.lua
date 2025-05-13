vim.cmd.colorscheme("oxocarbon")

vim.opt.nu = true
vim.opt.relativenumber = true

vim.o.expandtab = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.diagnostic.config({
    virtual_text = true
})

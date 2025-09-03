vim.opt.relativenumber = true
vim.o.statuscolumn = '%s %l %r '
vim.o.inccommand = 'split'
vim.o.signcolumn = 'yes'

-- Set tab width to 2 spaces
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

-- Always keep 8 lines above/below cursor except for the beginning and end of file
vim.o.scrolloff = 8

vim.o.colorcolumn = '80'

return {}

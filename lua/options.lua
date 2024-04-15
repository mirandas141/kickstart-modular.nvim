-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true
vim.o.statuscolumn = "%s %l %r "

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Set tab width to 2 spaces
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

-- Preview substitutions
vim.o.inccommand = 'split'

-- Always keep 8 lines above/below cursor except for the beginning and end of file
vim.o.scrolloff = 8

vim.o.colorcolumn = "80"

-- vim: ts=2 sts=2 sw=2 et

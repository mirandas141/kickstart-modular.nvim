return {
  vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'kzz'", { expr = true, silent = true }),
  vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'jzz'", { expr = true, silent = true }),
  vim.keymap.set('n', ';', ":"),
  vim.keymap.set({'n','t'}, '<A-i>', function() require("nvterm.terminal").toggle "float" end, { desc = "Toggle floating term" }),
  vim.keymap.set({'n','t'}, '<A-h>', function() require("nvterm.terminal").toggle "horizontal" end, { desc = "Toggle horizonta term" }),
  vim.keymap.set({'n','t'}, '<A-v>', function() require("nvterm.terminal").toggle "vertical" end, { desc = "Toggle vertica term" }),
  vim.keymap.set('n', '<C-h>', "<C-w>h", { desc = "Window left" }),
  vim.keymap.set('n', '<C-j>', "<C-w>j", { desc = "Window down" }),
  vim.keymap.set('n', '<C-k>', "<C-w>k", { desc = "Window up" }),
  vim.keymap.set('n', '<C-l>', "<C-w>l", { desc = "Window right" }),
  vim.keymap.set('n', '<leader>ee', "oif err != nil {<CR>}<Esc>Oreturn err<Esc>", { desc = "Insert GO error block" }),
}

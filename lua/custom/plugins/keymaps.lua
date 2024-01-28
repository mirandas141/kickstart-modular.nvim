return {
  vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'kzz'", { expr = true, silent = true }),
  vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'jzz'", { expr = true, silent = true }),
  vim.keymap.set({'n','v'}, ';', ":"),
  -- Following mappings are due to Windows capturing <C-V> for pasting and both blocks having an 'h' mapping
  vim.keymap.set({'n','t'}, '<leader>i', function() require("nvterm.terminal").toggle "float" end, { desc = "Toggle floating term" }),
  vim.keymap.set({'n','t'}, '<leader>h', function() require("nvterm.terminal").toggle "horizontal" end, { desc = "Toggle horizonta term" }),
  vim.keymap.set({'n','t'}, '<leader>v', function() require("nvterm.terminal").toggle "vertical" end, { desc = "Toggle vertica term" }),
  vim.keymap.set('n', '<A-h>', "<C-w>h", { desc = "Window left" }),
  vim.keymap.set('n', '<A-j>', "<C-w>j", { desc = "Window down" }),
  vim.keymap.set('n', '<A-k>', "<C-w>k", { desc = "Window up" }),
  vim.keymap.set('n', '<A-l>', "<C-w>l", { desc = "Window right" }),
}

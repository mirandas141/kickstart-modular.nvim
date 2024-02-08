return {
  vim.keymap.set({ 'n', 'v' }, ';', ":"),
  vim.keymap.set('i', ';;', "<esc>", { desc = "Escape from insert mode" }),
  vim.keymap.set({ 'n', 't' }, '<A-i>', function() require("nvterm.terminal").toggle "float" end,
    { desc = "Toggle floating term" }),
  vim.keymap.set({ 'n', 't' }, '<A-h>', function() require("nvterm.terminal").toggle "horizontal" end,
    { desc = "Toggle horizonta term" }),
  vim.keymap.set({ 'n', 't' }, '<A-v>', function() require("nvterm.terminal").toggle "vertical" end,
    { desc = "Toggle vertica term" }),
  --vim.keymap.set('n', '<C-h>', "<C-w>h", { desc = "Window left" }),
  --vim.keymap.set('n', '<C-j>', "<C-w>j", { desc = "Window down" }),
  --vim.keymap.set('n', '<C-k>', "<C-w>k", { desc = "Window up" }),
  --vim.keymap.set('n', '<C-l>', "<C-w>l", { desc = "Window right" }),
}

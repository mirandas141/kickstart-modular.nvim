return {
  vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'kzz'", { expr = true, silent = true }),
  vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'jzz'", { expr = true, silent = true }),
  vim.keymap.set('n', ';', ':'),
  vim.keymap.set('i', 'jj', '<esc>', { desc = 'Escape from insert mode' }),
}

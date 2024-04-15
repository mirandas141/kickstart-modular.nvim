return {
  vim.keymap.set({ 'n', 'v' }, ';', ":"),
  vim.keymap.set('i', 'jj', "<esc>", { desc = "Escape from insert mode" }),
}

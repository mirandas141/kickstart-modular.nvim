return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux"
  },
  vim.keymap.set('n', '<leader>tn', ':TestNearest<CR>', { desc = '[t]est [n]earest' }),
  vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', { desc = '[t]est [f]ile' }),
  vim.keymap.set('n', '<leader>ts', ':TestSuite<CR>', { desc = '[t]est [s]uite' }),
  vim.keymap.set('n', '<leader>tl', ':TestLast<CR>', { desc = '[t]est [l]ast' }),
  vim.keymap.set('n', '<leader>tv', ':TestVisit<CR>', { desc = '[t]est [v]isit' }),
  vim.cmd("let test#strategy = 'vimux'")
}

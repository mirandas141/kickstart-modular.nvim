return {
  'mbbill/undotree',
  lazy = false,
  vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })
}

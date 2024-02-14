local prefix = "<leader>t"

return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = { "TroubleToggle", "Trouble" },
  keys = {
    { prefix,        desc = "Trouble" },
    { prefix .. "w", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "[t]oggle [w]orkspace diagnositcs" },
    { prefix .. "d", "<cmd>TroubleToggle document_diagnostics<cr>",  desc = "[t]oggle [d]ocument diagnositcs" },
    { prefix .. "q", "<cmd>TroubleToggle quickfix<cr>",              desc = "[t]oggle [q]uickfix diagnositcs" },
  },
  opts = {
    use_diagnostic_signs = true,
    action_keys = {
      close = { "q", "<esc>" },
      cancel = "<C-e>",
    },
  },
}

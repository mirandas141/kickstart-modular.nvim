return {
  {
    "tpope/vim-fugitive",
    lazy = false,
    keys = {
      { "<leader>gs", "<cmd>vertical Git <cr>",      desc = "[g]it [s]tatus" },
      { "<leader>gc", "<cmd>Git commit --quiet<cr>", desc = "[g]it [c]commit" },
      { "<leader>gf", "<cmd>Git fetch<cr>",          desc = "[g]it [f]etch" },
      { "<leader>gP", "<cmd>Git push<cr>",           desc = "[g]it [P]ush" },
      { "<leader>gp", "<cmd>Git pull<cr>",           desc = "[g]it [p]ull" },
    },
  },
}

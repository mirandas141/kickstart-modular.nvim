return {
  "Wansmer/treesj",
  keys = {
    {
      "<leader>tj",
      "<CMD>TSJToggle<CR>",
      desc = "Toggle [T]reesitter [j]oin",
    },
  },
  cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
  opts = { use_default_keymaps = false },
}

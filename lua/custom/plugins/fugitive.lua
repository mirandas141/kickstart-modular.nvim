return {
  {
    "tpope/vim-fugitive",
    lazy = false,
    keys = {
      { "<leader>gs", "<cmd>vertical Git <cr>", desc = "[g]it [s]tatus" },
      { "<leader>gc", "<cmd>Git commit --quiet<cr>", desc = "[g]it [c]commit" },
      { "<leader>gff", "<cmd>Git fetch<cr>", desc = "[g]it [f]etch" },
      { "<leader>gfp", "<cmd>Git push<cr>", desc = "[g]it [p]ush" },
      { "<leader>gfP", "<cmd>Git pull<cr>", desc = "[g]it [P]ull" },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    dependencies = {
            "tpope/vim-fugitive",
    },
    opts = {
      -- See `:help gitsigns.txt`
      -- signs = {
      --   add = { text = '+' },
      --   change = { text = '~' },
      --   delete = { text = '_' },
      --   topdelete = { text = '‾' },
      --   changedelete = { text = '~' },
      -- },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map("n", "]c", function()
          if vim.wo.diff then
                  return "]c"
          end
          vim.schedule(function()
                  gs.next_hunk()
          end)
          return "<Ignore>"
        end, { expr = true, desc = "Next Hunk" })

        map("n", "[c", function()
          if vim.wo.diff then
                  return "[c"
          end
          vim.schedule(function()
                  gs.prev_hunk()
          end)
          return "<Ignore>"
        end, { expr = true, desc = "Previous Hunk"})

        -- Actions
        map({ "n", "v" }, "<leader>gt", ":Gitsigns stage_hunk<CR>")
        map({ "n", "v" }, "<leader>gr", ":Gitsigns reset_hunk<CR>")
        map({ "n", "v" }, "<leader>ge", ":Gedit<CR>")
        map("n", "<leader>gS", gs.stage_buffer, { desc = "[g]it [S]tage buffer" })
        map("n", "<leader>gu", gs.undo_stage_hunk, { desc = "[g]it [u]ndo stage hunk" })
        map("n", "<leader>gR", gs.reset_buffer, { desc = "[g]it [R]eset buffer" })
        map("n", "<leader>gp", gs.preview_hunk, { desc = "[g]it [p]review hunk" })
        map("n", "<leader>gb", function()
                gs.blame_line({ full = true })
        end, { desc = "[g]it [b]lame line" })
        map("n", "<leader>tb", gs.toggle_current_line_blame, { desc = "[t]oggle current line [b]lame" })
        map("n", "<leader>gd", gs.diffthis, { desc = "[g]it [d]iff this" })
        map("n", "<leader>gD", function()
                gs.diffthis("~")
        end, { desc = "[g]it inverse [D]iff" })
        map("n", "[gd", gs.toggle_deleted, { desc = "toggle [g]it [d]elete" })

        -- Text object
        map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", { desc = "select hunk" })
      end,
    },
  }
}

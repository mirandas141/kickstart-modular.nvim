return {
  -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  dependencies = {
    "tpope/vim-fugitive",
  },
  opts = {
    -- See `:help gitsigns.txt`
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map({ 'n', 'v' }, ']c', function()
        if vim.wo.diff then
          return ']c'
        end
        vim.schedule(function()
          gs.next_hunk()
        end)
        return '<Ignore>'
      end, { expr = true, desc = 'Jump to next hunk' })

      map({ 'n', 'v' }, '[c', function()
        if vim.wo.diff then
          return '[c'
        end
        vim.schedule(function()
          gs.prev_hunk()
        end)
        return '<Ignore>'
      end, { expr = true, desc = 'Jump to previous hunk' })

      -- Actions
      -- visual mode
      map('v', '<leader>ghs', function()
        gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
      end, { desc = '[g]it [h]unk [s]tage' })
      map('v', '<leader>ghr', function()
        gs.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
      end, { desc = '[g]it [h]unk [r]eset' })
      -- normal mode
      map('n', '<leader>ghs', gs.stage_hunk, { desc = '[g]it [h]unk [s]tage' })
      map('n', '<leader>ghr', gs.reset_hunk, { desc = '[g]it [h]unk [r]eset' })
      map('n', '<leader>ghu', gs.undo_stage_hunk, { desc = '[g]it [h]unk [u]ndo' })
      map('n', '<leader>ghp', gs.preview_hunk, { desc = '[g]it [h]unk [p]review' })
      map('n', '<leader>gbs', gs.stage_buffer, { desc = '[g]it [b]uffer [s]tage' })
      map('n', '<leader>gbr', gs.reset_buffer, { desc = '[g]it [b]uffer [r]eset' })
      map('n', '<leader>gbl', function()
        gs.blame_line { full = false }
      end, { desc = '[g]it [b]lame [l]ine' })
      map('n', '<leader>gdi', gs.diffthis, { desc = '[g]it [d]iff against [i]ndex' })
      map('n', '<leader>gdc', function()
        gs.diffthis '~'
      end, { desc = '[g]it [d]iff against last [c]ommit' })
      -- Toggles
      map('n', '<leader>gtb', gs.toggle_current_line_blame, { desc = '[g]it [t]oggle [b]lame line' })
      map('n', '<leader>gtd', gs.toggle_deleted, { desc = '[g]it [t]oggle show [deleted]' })

      -- Text object
      map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = 'select git hunk' })
    end,
  },
}

return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        on_attach = function(bufnr)
          local gs = require("gitsigns")
          local map = function(mode, keys, func, desc)
            vim.keymap.set(mode, keys, func, { buffer = bufnr, desc = desc })
          end

          -- Navigation
          map("n", "]h", gs.next_hunk, "Next hunk")
          map("n", "[h", gs.prev_hunk, "Prev hunk")

          -- Actions
          map("n", "<leader>hs", gs.stage_hunk,        "Stage hunk")
          map("n", "<leader>hr", gs.reset_hunk,        "Reset hunk")
          map("n", "<leader>hS", gs.stage_buffer,      "Stage buffer")
          map("n", "<leader>hu", gs.undo_stage_hunk,   "Undo stage hunk")
          map("n", "<leader>hp", gs.preview_hunk,      "Preview hunk")
          map("n", "<leader>hb", gs.blame_line,        "Blame line")
          map("n", "<leader>hd", gs.diffthis,          "Diff this")
        end,
      })
    end,
  },
}

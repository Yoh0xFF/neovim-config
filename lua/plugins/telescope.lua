return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          initial_mode = "normal",
          file_ignore_patterns = {
            "node_modules/", "%.git/", "dist/", "build/", "%.next/",
            "target/", "%.cache/", "%.DS_Store",
          },
        },
      })
      telescope.load_extension("fzf")

      local map = vim.keymap.set
      local b = require("telescope.builtin")
      map("n", "<leader>ff", b.find_files,  { desc = "Find files" })
      map("n", "<leader>fg", b.live_grep,   { desc = "Live grep" })
      map("n", "<leader>fb", b.buffers,     { desc = "Find buffers" })
      map("n", "<leader>fh", b.help_tags,   { desc = "Find help" })
      map("n", "<leader>fd", b.diagnostics, { desc = "Find diagnostics" })
      map("n", "<leader>fr", b.oldfiles,    { desc = "Recent files" })
      map("n", "<leader><leader>", b.oldfiles, { desc = "Recent files" })
    end,
  },
}

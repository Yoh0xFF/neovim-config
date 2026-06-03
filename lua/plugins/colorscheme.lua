return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
  },

  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("dracula")
    end,
  },
}

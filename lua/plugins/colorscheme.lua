return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000, -- load before all other plugins
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

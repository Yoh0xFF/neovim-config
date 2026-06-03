return {
  -- Icons (requires a Nerd Font: https://www.nerdfonts.com)
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "Mofiqul/dracula.nvim" },
    opts = {
      options = { theme = "dracula" },
    },
  },

  -- Auto-close brackets, quotes, etc.
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },

  -- Keymap popup: shows available keybindings when you pause after a prefix
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },

}

return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback", -- fall back to LSP formatting if no formatter configured
      },
      -- Add formatters per filetype here. Browse available formatters:
      -- https://github.com/stevearc/conform.nvim#formatters
      formatters_by_ft = {
        lua = { "stylua" },
      },
    },
  },
}

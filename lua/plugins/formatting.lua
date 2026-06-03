return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    keys = {
      { "<leader>cf", function() require("conform").format({ async = true }) end, desc = "Format buffer" },
    },
    opts = {
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback", -- fall back to LSP formatting if no formatter configured
      },
      -- Add formatters per filetype here. Browse available formatters:
      -- https://github.com/stevearc/conform.nvim#formatters
      formatters_by_ft = {
        lua = { "stylua" },
        json = { "jq" },
        jsonc = { "jq" },
        xml = { "xmllint" },
      },
    },
  },
}

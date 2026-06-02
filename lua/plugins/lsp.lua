return {
  { "williamboman/mason.nvim", config = true },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
      "saghen/blink.cmp",
    },
    config = function()
      local on_attach = function(_, bufnr)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
        end
        map("gd",         vim.lsp.buf.definition,    "Go to definition")
        map("gD",         vim.lsp.buf.declaration,   "Go to declaration")
        map("gr",         vim.lsp.buf.references,    "Go to references")
        map("gi",         vim.lsp.buf.implementation,"Go to implementation")
        map("K",          vim.lsp.buf.hover,         "Hover documentation")
        map("<leader>rn", vim.lsp.buf.rename,        "Rename symbol")
        map("<leader>ca", vim.lsp.buf.code_action,   "Code action")
      end

      local capabilities = require("blink.cmp").get_lsp_capabilities()

      require("mason-lspconfig").setup({
        -- Add language servers here. Browse available servers with :Mason
        ensure_installed = { "lua_ls" },
        handlers = {
          function(server_name)
            require("lspconfig")[server_name].setup({
              on_attach = on_attach,
              capabilities = capabilities,
            })
          end,
        },
      })
    end,
  },
}

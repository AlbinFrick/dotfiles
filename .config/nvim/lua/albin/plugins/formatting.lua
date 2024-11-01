return {
  "stevearc/conform.nvim",
  event = { "LspAttach", "BufReadPost", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "deno_fmt" },
      typescript = { "deno_fmt" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      json = { "deno_fmt", "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      html = { "prettier" },
      svelte = { "deno_fmt" },
      jsonc = { "deno_fmt", "prettier" },
    },
    format_on_save = {
      timeout_ms = 2500,
      lsp_fallback = true,
    },
  },
  config = function(_, opts)
    local conform = require("conform")

    -- Setup "conform.nvim" to work
    conform.setup(opts)

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
    -- Customise the default "prettier" command to format Markdown files as well
    conform.formatters.prettier = {
      prepend_args = { "--prose-wrap", "always" },
    }

    -- conform.formatters.deno_fmt = {
    --   prepend_args = { "--", "--unstable-component" },
    -- }
  end,
}

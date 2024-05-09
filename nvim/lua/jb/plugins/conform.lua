return {
  'stevearc/conform.nvim',
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        go = {"goimports", "gofumpt"},
        yaml = {'prettier'},
        python = { "isort", "black" },
        javascript = { "prettier" },
        markdown = { "prettier" },
        json = { "prettier" },
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })
    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end
}

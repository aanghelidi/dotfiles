require("conform").setup({
  formatters_by_ft = {
    python = { "ruff", "ruff_format" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
    async = false,
    stop_after_first = false,
  },
})

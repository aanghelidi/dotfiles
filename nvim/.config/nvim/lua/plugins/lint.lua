require('lint').linters_by_ft = {
  python = {'ruff', 'mypy', 'bandit',}
}

vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

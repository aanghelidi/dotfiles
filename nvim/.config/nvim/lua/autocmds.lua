-- Python
local python_group_id = vim.api.nvim_create_augroup("Python", {
  clear = true
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  group = python_group_id,
  pattern = "*.py",
  command = "set tabstop=4 softtabstop=4 shiftwidth=4"
})

-- Docker
local docker_group_id = vim.api.nvim_create_augroup("Docker", {
  clear = true
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  group = docker_group_id,
  pattern = "Dockerfile*",
  command = "set filetype=dockerfile"
})

local sql_group_id = vim.api.nvim_create_augroup("SQL", {
  clear = true
})

if vim.fn.executable('sqlformat') then
  vim.api.nvim_create_autocmd({"BufWritePre"}, {
    group = sql_group_id,
    pattern = "*.sql",
    command = "silent execute '%!sqlformat -i lower -k upper -r -'"
  })
end

-- Golang

local golang_group_id = vim.api.nvim_create_augroup("Go", {
  clear = true
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    local params = vim.lsp.util.make_range_params(0, "utf-8")
    params.context = {only = {"source.organizeImports"}}
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
    for cid, res in pairs(result or {}) do
      for _, r in pairs(res.result or {}) do
        if r.edit then
          local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
          vim.lsp.util.apply_workspace_edit(r.edit, enc)
        end
      end
    end
    vim.lsp.buf.format({async = false})
  end
})

-- Lsp forced autostart
local filetypes = { "python", "lua", "typescript", "go", "sh", "javascript", "markdown", "yaml" }

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, { callback = function()
    local buf_ft = vim.api.nvim_get_option_value("filetype", {buf = 0})
    local clients = vim.lsp.get_clients()
    if next(clients) == nil and vim.tbl_contains(filetypes, buf_ft) then
      vim.cmd("LspStart " .. buf_ft)
    end
  end,
})

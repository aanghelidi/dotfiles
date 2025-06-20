require("ale").setup({
	completion_enabled = false,
	disable_lsp = true,
	fixers = {
		python = { "ruff", "ruff_format" },
		go = { "gofumpt" },
		lua = { "stylua" },
		sh = { "shfmt" },
		javascript = { "biome" },
		typescript = { "biome" },
		json = { "biome" },
		css = { "biome" },
		terraform = { "terraform_fmt" },
		sql = { "sqlfluff" },
	},
	fix_on_save = 1,
	history_enabled = 0,
	lint_on_save = 1,
	lint_on_text_changed = "normal",
	linters = {
		python = {},
		go = { "staticcheck" },
		sh = { "shellcheck" },
		javascript = { "biome" },
		typescript = { "biome", "markdownlint" },
		markdown = { "vale" },
		rst = { "vale" },
		html = { "vale" },
		yaml = { "yamllint" },
		css = { "biome" },
		sql = { "sqlfluff" },
		dockerfile = { "hadolint" },
		terraform = { "checkov", "tfsec" },
	},
	linters_explicit = true,
	use_neovim_diagnostics_api = true,
	use_neovim_lsp_api = true,
	-- virtualtext_cursor = "disabled", -- important to use virtual_lines
	-- Fixers / Linters settings
	python_auto_uv = 1,
})

-- Diagnostics (use ALE to populate and control neovim diagnostic API directly)
vim.diagnostic.config({
	virtual_text = true,
	-- virtual_lines = { current_line = true },
})

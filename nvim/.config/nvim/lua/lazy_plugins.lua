local M = {
	{ "neovim/nvim-lspconfig" }, -- still useful for LspInfo like commands
	{ "ibhagwan/fzf-lua", dependencies = { "echasnovski/mini.icons" } },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", event = { "BufReadPost", "BufNewFile" } },
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
	},
	{ "dense-analysis/ale" },
	{ "saghen/blink.cmp", version = "1.*" },
	{
		"kristijanhusak/vim-dadbod-ui",
		dependencies = {
			{ "tpope/vim-dadbod", lazy = true },
			{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
		},
		cmd = {
			"DBUI",
			"DBUIToggle",
			"DBUIAddConnection",
			"DBUIFindBuffer",
		},
	},
}

return { M }

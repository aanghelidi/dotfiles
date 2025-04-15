-- Treesitter configuration
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"python",
		"go",
		"css",
		"html",
		"javascript",
		"json",
		"markdown",
		"markdown_inline",
		"toml",
		"typescript",
		"yaml",
		"sql",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})

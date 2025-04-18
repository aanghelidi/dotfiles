-- Completion setup
require("blink.cmp").setup({
	appearance = { nerd_font_variant = "mono" },
	completion = {
		list = { selection = { preselect = false, auto_insert = true } },
		accept = { auto_brackets = { enabled = false } },
		menu = { auto_show = false, draw = { treesitter = { "lsp" } } },
		documentation = { auto_show = false },
		trigger = { show_in_snippet = false },
		ghost_text = { enabled = true, show_with_menu = false, show_without_selection = true },
	},
	fuzzy = { implementation = "prefer_rust" },
	keymap = { preset = "super-tab" },
	signature = { enabled = true },
	sources = {
		default = { "lsp", "path", "buffer", "omni" },
		per_filetype = {
			sql = { "dadbod" },
			plsql = { "dadbod" },
			mysql = { "dadbod" },
		},
		providers = {
			dadbod = { module = "vim_dadbod_completion.blink" },
		},
	},
})

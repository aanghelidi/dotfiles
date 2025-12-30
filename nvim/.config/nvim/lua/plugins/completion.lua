-- Completion setup
require("blink.cmp").setup({
	appearance = { nerd_font_variant = "mono" },
	completion = {
		list = { selection = { preselect = false, auto_insert = true } },
		accept = { auto_brackets = { enabled = false } },
		menu = { auto_show = true, draw = { treesitter = { "lsp" } } },
		documentation = { auto_show = true },
		trigger = { show_in_snippet = false },
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

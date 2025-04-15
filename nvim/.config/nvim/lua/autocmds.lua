-- Python
local python_group_id = vim.api.nvim_create_augroup("Python", {
	clear = true,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	group = python_group_id,
	pattern = "*.py",
	command = "set tabstop=4 softtabstop=4 shiftwidth=4",
})

-- LspAttach
local lsp_group_id = vim.api.nvim_create_augroup("LspGroup", {})

vim.api.nvim_create_autocmd("LspAttach", {
	group = lsp_group_id,
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

		-- Unset 'formatexpr'
		vim.bo[args.buf].formatexpr = nil

		-- Configure MiniCompletion
		if client:supports_method("textDocument/completion") then
			vim.bo[args.buf].omnifunc = "v:lua.MiniCompletion.completefunc_lsp"
			-- Built-in completion
			-- vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
		end

		-- -- Add custom mapping
		local bufopts = { silent = true, buffer = args.buf }

		vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
		vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, bufopts)
		vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, bufopts)
		vim.keymap.set("n", "<Leader>bf", vim.lsp.buf.format, bufopts)
		vim.keymap.set("n", "<Leader>ds", vim.lsp.buf.document_symbol, bufopts)

		-- -- Enable inlay hints
		vim.lsp.inlay_hint.enable()
	end,
})

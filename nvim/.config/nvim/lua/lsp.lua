-- Base generic config
vim.lsp.config("*", {
	root_markers = { ".git" },
})

-- Enable servers
local lspServers = {
	"luals",
	"ruff",
	"gopls",
	"ts_ls",
	"bashls",
	"marksman",
	"yamlls",
	--"pyrefly",
	"ty",
	"jedi_language_server",
}
for _, lspServer in ipairs(lspServers) do
	vim.lsp.enable(lspServer)
end

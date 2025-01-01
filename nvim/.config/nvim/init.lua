-- Basic settings
require('settings')
-- Autocommands
require('autocmds')
-- Plugins
require('plugins')
-- Tree-sitter
require('plugins.treesitter')
-- LSP
require('lsp.pyright')
require('lsp.luals')
require('lsp.ruff')
require('lsp.tsserver')
require('lsp.deno')
require('lsp.gopls')
require('lsp.bash')
require('lsp.dockerls')
require('lsp.html')
require('lsp.tailwind')
require("lsp.rustanalyzer")
require("lsp.ocaml")
require("lsp.zig")
-- Completions
require('plugins.completion')
-- Fzf
require('plugins.fzf')

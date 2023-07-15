local map = vim.api.nvim_set_keymap

map('n', '<Leader>ff', ':Telescope find_files<CR>', {noremap = true})
map('n', '<Leader>gf', ':Telescope git_files<CR>', {noremap = true})
map('n', '<Leader>fg', ':Telescope live_grep<CR>', {noremap = true})
map('n', '<Leader>fb', ':Telescope buffers<CR>', {noremap = true})
map('n', '<Leader>fh', ':Telescope help_tags<CR>', {noremap = true})
map('n', '<Leader>gs', ':Telescope grep_string<CR>', {noremap = true})
map('n', '<Leader>mp', ':Telescope man_pages<CR>', {noremap = true})
map('n', '<Leader>di', ':Telescope diagnostics<CR>', {noremap = true})
map('n', '<Leader>sd', ':Telescope lsp_document_symbols<CR>', {noremap = true})
map('n', '<Leader>ts', ':Telescope treesitter<CR>', {noremap = true})
map('n', '<Leader>sw', ':Telescope lsp_dynamic_workspace_symbols<CR>', {noremap = true})

require('telescope').setup{
  defaults = {
    preview_cutoff=1,
  },
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
      fzy_native = {
          override_generic_sorter = false,
          override_file_sorter = true,
      }
  }
}

require('telescope').load_extension('fzy_native')

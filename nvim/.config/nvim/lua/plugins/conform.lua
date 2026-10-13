-- Autoformat
require('conform').setup {
  notify_on_error = false,
  format_on_save = function(bufnr)
    local disable_filetypes = {}
    if disable_filetypes[vim.bo[bufnr].filetype] then
      return nil
    else
      return {
        timeout_ms = 500,
        lsp_format = 'fallback',
      }
    end
  end,
  -- formatters = {
  --   ['clang-format'] = {
  --     prepend_args = { '--style={BasedOnStyle: LLVM, ColumnLimit: 120}' },
  --   },
  -- },
  formatters_by_ft = {
    lua = { 'stylua' },
    cpp = { 'clang-format' },
    c = { 'clang-format' },
    json = { 'prettier' },
    yaml = { 'prettier' },
    toml = { 'taplo' },
    -- kdl = { 'kdlfmt' },
  },
}
vim.keymap.set({ '' }, '<leader>F', function()
  require('conform').format { async = true, lsp_format = 'fallback' }
end, { desc = '[F]ormat buffer' })

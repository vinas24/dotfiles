-- Highlight, edit, and navigate code
require('nvim-treesitter.config').setup {
  ensure_installed = { 'bash', 'c', 'diff', 'html', 'java', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'latex', 'query', 'vim', 'vimdoc' },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { 'ruby' },
  },
  indent = { enable = true, disable = { 'ruby' } },
}

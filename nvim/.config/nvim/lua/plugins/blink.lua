local cmp = require 'blink.cmp'
cmp.build():pwait()
cmp.setup {
  keymap = { preset = 'default' },
  appearance = {
    nerd_font_variant = 'mono',
    use_nvim_cmp_as_default = false,
  },
  completion = {
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 200,
      window = {
        border = 'rounded',
        winhighlight = 'Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc',
      },
    },
    ghost_text = { enabled = true },
    list = {
      selection = {
        preselect = true,
        auto_insert = false,
      },
    },
    menu = {
      border = 'rounded',
      winhighlight = 'Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None',
      draw = {
        columns = {
          { 'kind_icon' },
          { 'label', 'label_description', gap = 1 },
          { 'kind' },
        },
        treesitter = { 'lsp' },
      },
    },
  },
  signature = {
    enabled = true,
    window = {
      border = 'rounded',
      winhighlight = 'Normal:BlinkCmpSignatureHelp,FloatBorder:BlinkCmpSignatureHelpBorder',
    },
  },
  sources = {
    default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
    providers = {
      lazydev = {
        name = 'LazyDev',
        module = 'lazydev.integrations.blink',
        score_offset = 100,
      },
    },
  },
  snippets = { preset = 'default' },
  fuzzy = { implementation = 'rust' },
}

vim.api.nvim_set_hl(0, 'BlinkCmpMenu', { bg = '#1e1e2e' })
vim.api.nvim_set_hl(0, 'BlinkCmpMenuBorder', { fg = '#89b4fa', bg = '#1e1e2e' })
vim.api.nvim_set_hl(0, 'BlinkCmpMenuSelection', { bg = '#313244' })
vim.api.nvim_set_hl(0, 'BlinkCmpDoc', { bg = '#1e1e2e' })
vim.api.nvim_set_hl(0, 'BlinkCmpDocBorder', { fg = '#89b4fa', bg = '#1e1e2e' })
vim.api.nvim_set_hl(0, 'BlinkCmpSignatureHelp', { bg = '#1e1e2e' })
vim.api.nvim_set_hl(0, 'BlinkCmpSignatureHelpBorder', { fg = '#89b4fa', bg = '#1e1e2e' })

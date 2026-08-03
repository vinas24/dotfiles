-- Preview of markdown inside Neovim
local presets = require 'markview.presets'
require('markview').setup {
  preview = {
    enable = false,
    icon_provider = 'devicons',
    map_gx = true,
    fancy_comments = true,
  },
  latex = {
    enable = true,
    provider = 'katex',
    block = {
      enable = true,
      hl = 'Code',
      text = { '󰚔 KaTeX ', 'Special' },
    },
    inline = {
      enable = true,
    },
  },
  markdown = {
    headings = presets.headings.numbered,
    block_quotes = {
      enable = true,
      wrap = true,
    },
    code_blocks = {
      enable = true,
      border_hl = 'MarkviewCode',
      min_width = 80,
      pad_amount = 4,
      pad_char = ' ',
      style = 'block',
      sign = true,
    },
    list_items = {
      enable = true,
      wrap = true,
      marker_minus = {
        add_padding = true,
        conceal_on_checkboxes = true,
        text = '-',
        hl = 'MarkviewListItemMinus',
      },
    },
  },
  markdown_inline = {
    enable = true,
    inline_codes = {
      enable = true,
      hl = 'MarkviewInlineCode',
    },
  },
}

vim.api.nvim_set_keymap('n', '<leader>me', '<CMD>Markview toggle<CR>', { desc = 'Toggles markdown highlight for current buffer.' })
vim.api.nvim_set_keymap('n', '<leader>ms', '<CMD>Markview splitToggle<CR>', { desc = 'Toggles `splitview` for current buffer.' })

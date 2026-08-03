-- Collection of various small independent plugins/modules
require('mini.ai').setup { n_lines = 500 }
require('mini.surround').setup()
require('mini.misc').setup()
require('mini.indentscope').setup()
require('mini.pairs').setup()
require('mini.icons').setup()
MiniIcons.mock_nvim_web_devicons()

local statusline = require 'mini.statusline'
statusline.setup {
  use_icons = vim.g.have_nerd_font,
  content = {
    active = function()
      local root = MiniMisc.find_root(0) or vim.fn.getcwd()
      local full_path = vim.fn.expand '%:p'
      -- Esto sirve para que el path se acorte si se encuentra en una carpeta muy profunda
      -- Se acorta en base a la raiz del proyecto (suele ser .git o así)
      local display_path
      if #full_path > 50 then
        if full_path:sub(1, #root) == root then
          display_path = full_path:sub(#root + 2)
        else
          display_path = vim.fn.expand '%:t'
        end
      else
        display_path = full_path
      end
      --Esto es para seleccionar que componentes aparecen en la statusline
      local mode, mode_hl = statusline.section_mode { trunc_width = 120 }
      local git = statusline.section_git { trunc_width = 40 }
      local diff = statusline.section_diff { trunc_width = 75 }
      local diagnostics = statusline.section_diagnostics { trunc_width = 75 }
      local lsp = statusline.section_lsp { trunc_width = 75 }
      local file_info = statusline.section_fileinfo { trunc_width = 120 }
      local search = statusline.section_searchcount { trunc_witdth = 75 }
      local location = statusline.section_location { trunc_width = 75 }

      return statusline.combine_groups {
        { hl = mode_hl, strings = { mode } },
        { hl = 'MiniStatuslineDevInfo', strings = { git, diff, diagnostics, lsp } },
        '%<',
        { hl = 'MiniStatuslineFilename', strings = { display_path } },
        '%=',
        { hl = 'MiniStatuslineFileinfo', strings = { file_info } },
        { hl = mode_hl, strings = { search, location } },
      }
    end,
  },
}

---@diagnostic disable-next-line: duplicate-set-field
statusline.section_location = function()
  return '%2l:%-2v'
end

-- For moving lines with Alt + hjkl
require('mini.move').setup()

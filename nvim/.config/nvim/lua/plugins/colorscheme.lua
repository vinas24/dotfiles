-- [[ Colorschemes ]]
require('catppuccin').setup {
  auto_integrations = true,
  flavour = 'mocha',
  styles = {},
}
vim.cmd.colorscheme 'catppuccin'
-- kanagawa.nvim, onedarkpro.nvim, and jb.nvim are installed and available via
-- :colorscheme <name> but not activated by default.

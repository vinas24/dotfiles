--[[
  Migrated from lazy.nvim / kickstart.nvim to Neovim 0.12's built-in `vim.pack`
  plugin manager, with native LSP-driven completion instead of blink.cmp/LuaSnip.

  Plugin install/update state lives in `nvim-pack-lock.json` next to this file
  (keep it under version control). Use `vim.pack.update()` to update plugins
  and `vim.pack.del({ 'plugin-name' })` to remove one you stop using here.

  This file is just the entrypoint. Everything else lives under lua/:
    lua/config/   -- options, keymaps, autocmds (no plugins involved)
    lua/packs.lua -- PackChanged hooks + the vim.pack.add{} install list
    lua/plugins/  -- one file per plugin/feature area, each just calls setup()
--]]

-- Speeds up `require()` for non-lazy-loaded configs. Safe no-op if unsupported.
vim.loader.enable()

require 'config.options'
require 'config.keymaps'
require 'config.autocmds'

-- Must run before any require() of an actual plugin module below: this is
-- where PackChanged hooks are registered and vim.pack.add{} is called.
require 'packs'

require 'plugins.colorscheme'
require 'plugins.guess-indent'
require 'plugins.mini'
require 'plugins.telescope'
require 'plugins.gitsigns'
require 'plugins.snacks'
require 'plugins.treesitter'
require 'plugins.todo-comments'
require 'plugins.markview'
require 'plugins.lsp'
require 'plugins.conform'
require 'plugins.dap'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

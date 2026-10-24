vim.loader.enable()

require('vim._core.ui2').enable {}

require 'config.options'
require 'config.keymaps'
require 'config.autocmds'

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
require 'plugins.blink'
require 'plugins.lsp'
require 'plugins.conform'
require 'plugins.dap'

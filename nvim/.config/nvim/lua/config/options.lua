-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.colorcolumn = '80'
vim.o.mouse = 'a'
vim.o.showmode = false

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.o.inccommand = 'split'
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.sidescrolloff = 10
vim.o.confirm = true

-- Native insert-mode auto-completion (replaces blink.cmp / LuaSnip).
-- LSP completion items still expand snippets automatically via `vim.snippet`.
-- vim.o.autocomplete = true
-- vim.o.completeopt = 'menu,menuone,noselect,popup'
-- vim.o.pumborder = 'rounded'
-- vim.o.pummaxwidth = 40

vim.lsp.document_color.enable()

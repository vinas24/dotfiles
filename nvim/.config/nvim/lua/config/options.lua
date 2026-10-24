vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.o.nu = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.o.mouse = 'nv'
vim.o.showmode = false

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.o.breakindent = true
vim.o.undofile = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = vim.fn.stdpath 'data' .. '/undodir'

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.wrap = false
vim.o.smartindent = true
vim.o.inccommand = 'split'

vim.o.cursorline = true
-- vim.o.guicursor = ''
vim.o.scrolloff = 10
vim.o.sidescrolloff = 10
vim.o.colorcolumn = '80'

vim.o.confirm = true
vim.g.net_banner = 0
vim.o.cmdheight = 0
vim.lsp.document_color.enable()

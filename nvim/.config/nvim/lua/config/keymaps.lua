vim.keymap.set('n', '<Esc>', ':nohl<CR>', { desc = 'Clear search highlighting', silent = true })

vim.keymap.set('x', 'p', [["_dP]], { desc = 'Paste over selection without losing yanked text' })
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete without yanking' })

vim.keymap.set('n', 'gn', '<Cmd>try | cnext | catch | cfirst | catch | endtry<CR>', { desc = '[G]o to [N]ext diagnostic' })
vim.keymap.set('n', 'gp', '<Cmd>try | cprevious | catch | clast | catch | endtry<CR>', { desc = '[G]o to [P]revious diagnostic' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<leader>re', '<cmd>restart<CR>', { desc = 'Restart neovim' })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'move down in buffer with cursor centered' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'move up in buffer with cursor centered' })

vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result centered' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result centered' })

--undoTree
vim.keymap.set('n', '<leader>u', function()
  vim.cmd.packadd 'nvim.undotree'
  require('undotree').open()
end, { desc = 'Toggle Builtin Undotree' })

-- Window and tmux navigation
vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })
vim.keymap.set('n', '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>')
vim.keymap.set('n', '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>')
vim.keymap.set('n', '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>')
vim.keymap.set('n', '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>')

-- [[ Install hooks ]]
-- Must be created BEFORE vim.pack.add() so the very first install run picks
-- them up (matters when bootstrapping from the lockfile on a new machine).
vim.api.nvim_create_autocmd('PackChanged', {
  group = vim.api.nvim_create_augroup('pack-hooks', { clear = true }),
  callback = function(ev)
    local name, kind, data = ev.data.spec.name, ev.data.kind, ev.data
    if name == 'nvim-treesitter' and kind == 'update' then
      if not data.active then
        vim.cmd.packadd 'nvim-treesitter'
      end
      vim.cmd 'TSUpdate'
    elseif name == 'telescope-fzf-native.nvim' and (kind == 'install' or kind == 'update') then
      if vim.fn.executable 'make' == 1 then
        vim.system({ 'make' }, { cwd = data.path })
      end
    end
  end,
})

-- [[ Install and load plugins ]]
vim.pack.add {
  'https://github.com/NMAC427/guess-indent.nvim',
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/nvim-telescope/telescope-fzf-native.nvim',
  'https://github.com/nvim-telescope/telescope-ui-select.nvim',
  'https://github.com/folke/lazydev.nvim',
  'https://github.com/christoomey/vim-tmux-navigator',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/mason-org/mason-lspconfig.nvim',
  'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
  'https://github.com/j-hui/fidget.nvim',
  'https://github.com/mfussenegger/nvim-jdtls',
  'https://github.com/stevearc/conform.nvim',
  { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
  'https://github.com/folke/todo-comments.nvim',
  'https://github.com/OXY2DEV/markview.nvim',
  'https://github.com/folke/snacks.nvim',
  'https://github.com/echasnovski/mini.nvim',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/mfussenegger/nvim-dap',
  'https://github.com/rcarriga/nvim-dap-ui',
  'https://github.com/nvim-neotest/nvim-nio',
  'https://github.com/jay-babu/mason-nvim-dap.nvim',
  'https://github.com/leoluz/nvim-dap-go',
  'https://github.com/saghen/blink.lib',
  'https://github.com/saghen/blink.cmp',
  'https://github.com/rafamadriz/friendly-snippets',
}

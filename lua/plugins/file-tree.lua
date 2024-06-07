return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    vim.keymap.set('n', '/', ':Neotree toggle current reveal_force_cwd<cr>', { desc = 'Show cwd in new window' })
    vim.keymap.set('n', '|', ':Neotree reveal<cr>', { desc = 'Open file tree' })
    vim.keymap.set('n', '<leader>tb', ':Neotree toggle show buffers right<cr>', { desc = '[T]oggle [B]uffers' })
    vim.keymap.set('n', '<leader>gs', ':Neotree float git_status<cr>', { desc = 'Open [G]it [S]tatus' })
  end,
}

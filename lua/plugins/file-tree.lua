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
    -- keymaps
    vim.keymap.set('n', '|', ':Neotree reveal<cr>', { desc = 'Open file tree' })
    vim.keymap.set('n', '<leader>tb', ':Neotree toggle show buffers right<cr>', { desc = '[T]oggle [B]uffers' })
    vim.keymap.set('n', '<leader>tds', ':Neotree document_symbols<cr>', { desc = 'Open [T]ree for [D]ocument [S]ymbols' })

    -- config
    require('neo-tree').setup {
      sources = {
        'filesystem',
        'buffers',
        'git_status',
        'document_symbols',
      },
      close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
      enable_cursor_hijack = true, -- If enabled neotree will keep the cursor on the first letter of the filename when moving in the tree.
      filtered_items = {
        force_visible_in_empty_folder = true, -- when true, hidden files will be shown if the root folder is otherwise empty
      },
    }
  end,
}

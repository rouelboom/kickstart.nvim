-- ~/.config/nvim/plugins/nvim-tree.lua
return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      sort_by = 'case_sensitive',
      view = {
        width = 30,
        side = 'left',
        preserve_window_proportions = true,
      },
      renderer = {
        group_empty = true,
        icons = {
          glyphs = {
            folder = {
              arrow_closed = '', -- стрелки в закрытых папках
              arrow_open = '', -- стрелки в открытых папках
            },
          },
        },
      },
      filters = {
        dotfiles = false, -- показывать скрытые файлы
      },
    }

    -- Маппинг для открытия/закрытия дерева
    vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end,
}

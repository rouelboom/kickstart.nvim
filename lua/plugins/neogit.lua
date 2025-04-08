return {
  'TimUntersberger/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('neogit').setup {
      integrations = {
        diffview = true, -- если будешь использовать diffview
      },
    }
  end,
  keys = {
    {
      '<leader>gg',
      function()
        require('neogit').open()
      end,
      desc = 'Open Neogit',
    },
  },
  cmd = 'Neogit',
}

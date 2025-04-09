return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      -- Можно настроить размеры, поведение и т.д.
      direction = 'horizontal',
      size = 15,
      open_mapping = [[<c-\>]],
      start_in_insert = true,
    }
  end,
}

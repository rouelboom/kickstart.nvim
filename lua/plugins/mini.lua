-- ==========================================
-- = lua/plugins/mini.lua
-- ==========================================
return {
  'echasnovski/mini.nvim',
  config = function()
    -- mini.ai
    require('mini.ai').setup { n_lines = 500 }
    -- mini.surround
    require('mini.surround').setup()

    -- mini.statusline
    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
}

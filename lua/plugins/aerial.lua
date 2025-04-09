-- ==========================================
-- = lua/plugins/aerial.lua
-- ==========================================
return {
  'stevearc/aerial.nvim',
  opts = {
    backends = { 'lsp', 'treesitter', 'markdown' },
    layout = {
      min_width = 30,
      default_direction = 'prefer_right',
    },
    show_guides = true,
    filter_kind = false,
  },
  keys = {
    {
      '<leader>o',
      '<cmd>AerialToggle!<CR>',
      desc = '[O]utline toggle (Aerial)',
    },
  },
  cmd = { 'AerialToggle', 'AerialOpen', 'AerialNavToggle' },
}

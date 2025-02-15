-- =========================================
-- = lua/plugins/init.lua                 =
-- =========================================

return require('lazy').setup({
  -- Подключаем каждый плагин-спецификацию из отдельных файлов:
  require 'plugins.tpope-sleuth',
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.conform',
  require 'plugins.cmp',
  require 'plugins.colorscheme',
  require 'plugins.todo-comments',
  require 'plugins.mini',
  require 'plugins.treesitter',
}, {
  -- Дополнительные настройки UI
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

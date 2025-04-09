-- ~/.config/nvim/lua/plugins/vim-test.lua

return {
  'vim-test/vim-test',
  dependencies = {
    'akinsho/toggleterm.nvim',
  },
  config = function()
    -- 🔁 Получаем python из VIRTUAL_ENV
    local venv = os.getenv 'VIRTUAL_ENV'
    if venv then
      vim.g['test#python#python'] = venv .. '/bin/python'
    end

    -- 🧠 Создаём кастомную стратегию, которая подменяет `python` на конкретный путь
    vim.g['test#custom_strategies'] = {
      toggleterm_venv = function(cmd)
        local python_path = vim.g['test#python#python'] or 'python3'
        -- Подмена python / python3 / python3.11 и т.п. в начале команды
        local rewritten_cmd = cmd:gsub('^python[%d.]*', python_path)
        -- Выполнение в toggleterm
        vim.cmd('TermExec cmd=' .. vim.fn.string(rewritten_cmd))
      end,
    }

    -- 🧪 Устанавливаем стратегию
    vim.g['test#strategy'] = 'toggleterm_venv'

    -- 🔗 Горячие клавиши
    vim.keymap.set('n', '<leader>tn', ':TestNearest<CR>', { desc = '[T]est [N]earest' })
    vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', { desc = '[T]est [F]ile' })
    vim.keymap.set('n', '<leader>ts', ':TestSuite<CR>', { desc = '[T]est [S]uite' })
    vim.keymap.set('n', '<leader>tl', ':TestLast<CR>', { desc = '[T]est [L]ast' })
    vim.keymap.set('n', '<leader>tv', ':TestVisit<CR>', { desc = '[T]est [V]isit' })
  end,
}

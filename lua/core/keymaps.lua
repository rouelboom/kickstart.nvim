-- ==========================
-- = lua/core/keymaps.lua  =
-- ==========================

-- Сброс поиска по <Esc>
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Открыть список диагностик
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Выход из терминального режима: <Esc><Esc>
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Переключение между сплитами
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Focus left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Focus right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Focus lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Focus upper window' })

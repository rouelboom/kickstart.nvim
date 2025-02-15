-- ==========================
-- = lua/core/options.lua =
-- ==========================

-- Нумерация строк
vim.opt.number = true
vim.opt.relativenumber = true

-- Мышь
vim.opt.mouse = 'a'

-- Показывать ли текущий режим (у вас было showmode = true)
vim.opt.showmode = true

-- Копировать в буфер ОС
--  Пробуем делать schedule, т.к. бывает ускоряет старт
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Прочие стандартные опции
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.scrolloff = 10

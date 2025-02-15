-- =====================
-- = init.lua (корень) =
-- =====================

-- 1. Задаём лидер (должно быть до загрузки плагинов)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Если у вас установлен Nerd Font, смените на `true`
vim.g.have_nerd_font = false

-- 2. Подключаем базовые настройки
require 'core.options'
require 'core.keymaps'
require 'core.autocmds'

-- 3. Проверяем/клонируем lazy.nvim (менеджер плагинов)
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    lazyrepo,
    lazypath,
  }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- 4. Загружаем список плагинов (и их конфиг)
require 'plugins.init'

-- Модельная строка (необязательно)
-- vim: ts=2 sts=2 sw=2 et

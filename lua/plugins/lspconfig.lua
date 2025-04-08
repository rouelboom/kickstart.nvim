-- ~/.config/nvim/lua/plugins/lspconfig.lua

return {
  'neovim/nvim-lspconfig',
  config = function()
    require('lspconfig').pyright.setup {
      -- Здесь можно задать общие опции (on_attach, capabilities и т.п.)
      settings = {
        python = {
          -- Устанавливаем pythonPath через самовызывающуюся функцию:
          pythonPath = (function()
            local venv_path = os.getenv 'VIRTUAL_ENV'
            if venv_path then
              return venv_path .. '/bin/python'
            else
              return vim.fn.exepath 'python'
            end
          end)(),
        },
      },
    }
  end,
}

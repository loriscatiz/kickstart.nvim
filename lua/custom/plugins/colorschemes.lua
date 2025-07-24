return {
  -- Catppuccin
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    variant = 'mocha',
    priority = 1000,
  },

  -- Gruvbox
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('gruvbox').setup {
        contrast = 'hard', -- può essere '', 'soft', 'hard'
        -- variant = 'material',
        transparent_mode = false,
      }
    end,
  },

  -- Solarized
  {
    'maxmx03/solarized.nvim',
    priority = 1000,
    config = function()
      require('solarized').setup {
        -- 'spring', 'summer', 'autumn', 'winter'
        variant = 'winter',
        transparent = {
          enabled = false,
        },
      }
    end,
  },

  -- Tokyo Night (bonus - molto popolare)
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        style = 'night', -- 'storm', 'moon', 'night', 'day'
        transparent = false,
      }
    end,
  },

  -- CONFIGURAZIONE DEL COLORSCHEME DEFAULT
  -- Metti questo DOPO tutti i plugin colorscheme
  {
    'folke/lazy.nvim', -- Usa lazy.nvim stesso per fare la configurazione iniziale
    config = function()
      -- QUI SCEGLI IL TUO COLORSCHEME DEFAULT
      vim.cmd.colorscheme 'catppuccin' -- Cambia questo per settare il default
    end,
  },
}

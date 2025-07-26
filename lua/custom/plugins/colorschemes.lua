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
  -- night owl
  {
    'oxfist/night-owl.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
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

  {
    'catppuccin/nvim',
    priority = 1001,
    lazy = false,
    config = function()
      vim.api.nvim_create_autocmd('VimEnter', {
        callback = function()
          vim.cmd.colorscheme 'catppuccin'
        end,
      })
    end,
  },
}

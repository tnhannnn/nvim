return {{ 
        "catppuccin/nvim",
        name = "catppuccin", 
        priority = 1000,
        config = function()
            vim.cmd.colorscheme "catppuccin"
        end
    },
    {
  "HiPhish/rainbow-delimiters.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    local rainbow_delimiters = require "rainbow-delimiters"
    vim.g.rainbow_delimiters = {
      highlight = {
        "RainbowDelimiterRed",
        "RainbowDelimiterYellow",
        "RainbowDelimiterBlue",
        "RainbowDelimiterOrange",
        "RainbowDelimiterGreen",
        "RainbowDelimiterViolet",
        "RainbowDelimiterCyan",
      },
    }
  end,
},
}

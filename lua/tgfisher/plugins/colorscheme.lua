return {
  { "rose-pine/neovim", 
    name = "rose-pine",
    lazy = false,
},
  {
    -- Theme inspired by Atom
    "navarasu/onedark.nvim",
    lazy = false,
    config = function()
      require("onedark").setup({
        -- Set a style preset. 'dark' is default.
        style = "darker", -- dark, darker, cool, deep, warm, warmer, light
        -- transparent = true,
      })
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    opts = {
      -- transparent_bg = true,
      italic_comment = true,
    },
  },

  { "ellisonleao/gruvbox.nvim" },

  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- --vim.cmd.colorscheme("tokyonight")
      -- ---- You can configure highlights by doing something like
      -- --vim.cmd.hi("Comment gui=none")
    end,
  },

  { "xiyaowong/transparent.nvim" },
}

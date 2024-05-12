--- Produces a nice splash page for nvim if no file is passed in on start
return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      theme = "doom",
      config = {
        week_header = {
          enable = true,
        },
        center = {
          {
            action = "Telescope find_files",
            desc = " Find file",
            icon = " ",
            key = "f",
          },
          {
            action = "Telescope live_grep",
            desc = " Grep text",
            icon = " ",
            key = "g",
          },
          {
            action = "ene | startinsert",
            desc = " New file",
            icon = " ",
            key = "n",
          },
          {
            action = "Telescope oldfiles",
            desc = " Recent files",
            icon = " ",
            key = "r",
          },
          -- { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
          {
            action = "Lazy",
            desc = " Lazy",
            icon = "󰒲 ",
            key = "l",
          },
          {
            action = "qa",
            desc = " Quit",
            icon = " ",
            key = "q",
          },
        },
      },
      hide = {
        statusline = true,
      },
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}

return {
  -- Add messages and cmd as bubble windows.
  "folke/noice.nvim",
  event = "VeryLazy",
  enabled = true,
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
  },
  keys = {
    {
      "<leader>od",
      function()
        require("noice").cmd("dismiss")
      end,
      desc = "[D]ismiss message",
    },
    {
      "<leader>ol",
      function()
        require("noice").cmd("last")
      end,
      desc = "[L]ast message",
    },
    {
      "<leader>oh",
      function()
        require("noice").cmd("history")
      end,
      desc = "Message [H]istory",
    },
  },
  opts = {
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
      },
    },
    routes = {
      { -- from lazynvim.nvim
        filter = {
          event = "msg_show",
          any = {
            { find = "%d+L, %d+B" },
            { find = "; after #%d+" },
            { find = "; before #%d+" },
          },
        },
        view = "mini",
      },
      -- { -- I hate the long messages that go away quicker than I can read
      --   filter = { event = "msg_show", min_height = 10},
      --   view = "messages",
      -- },
    },
    -- you can enable a preset for easier configuration
    presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      command_palette = true, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = true, -- add a border to hover docs and signature help
    },
  },
  config = function()
    require("notify").setup({
      background_colour = "#000000"
    })
    require("noice").setup()
  end,
}

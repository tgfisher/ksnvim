return {
  "shortcuts/no-neck-pain.nvim",
  dependencies = {
    "preservim/vim-pencil",
    "nvim-treesitter/nvim-treesitter",
    {
      "folke/zen-mode.nvim",
      opts = {
        window = { width = 85, height = 1 },
      },
    },
  },
  opts = { width = 85, autocmds = { reloadOnColorSchemeChange = true } },
  config = function()
    --require("no-neck-pain").setup()
    require("no-neck-pain").setup()
    -- no neck pain will center a window, but it keeps the
    -- tabs visible. This is a nice way to keep things minimalists
    -- and centered for writing so it can be easily wrapped
    vim.keymap.set("n", "<leader>np", function()
      require("no-neck-pain").toggle()
    end, { desc = "[N]o-neck-[P]ain" })

    vim.keymap.set("n", "<leader>ns", function()
      vim.cmd("SoftPencil")
      vim.opt.conceallevel = 2 -- until I can get markdown to give me italics
    end, { desc = "[N]ice [S]Oft pencil" })

    vim.keymap.set("n", "<leader>nh", function()
      vim.cmd("HardPencil")
      vim.opt.conceallevel = 0 -- see all symbols
    end, { desc = "[N]ice [H]ard pencil" })

    vim.keymap.set("n", "<leader>nop", function()
      require("no-neck-pain").toggle()
      vim.cmd("SoftPencil")
      vim.cmd("TSBufDisable highlight")
      vim.cmd("set spell")
      vim.opt.conceallevel = 2 -- until I can get markdown to give me italics
    end, { desc = "[N]o neckpain s[O]ft [P]encil" })

    vim.keymap.set("n", "<leader>nh", function()
      vim.cmd("TSBufEnable highlight")
    end, { desc = "[N]ice [H]ighlight" })

    vim.keymap.set("n", "<leader>nd", function()
      vim.cmd("TSBufDisable highlight")
    end, { desc = "[N]ice [D]isable highlight" })

    vim.keymap.set("n", "<leader>nz", function()
      require("zen-mode").open()
      vim.cmd("SoftPencil")
      vim.opt.conceallevel = 0 -- until I can get markdown to give me italics
    end, { desc = "[N]ice [Z]en" })
  end,
}

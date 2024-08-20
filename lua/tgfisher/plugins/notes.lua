return {
  {
    "zk-org/zk-nvim",
    config = function()
      require("zk").setup()

      -- Keymaps
      -- which key register like this:
      -- ["<leader>k"] = { name = "zettel[K]asten", _ = "which_key_ignore", mode = {"n", "v"}}

      vim.keymap.set("n", "<leader>kl", function()
        vim.cmd("ZkInsertLink")
      end, { desc = "Zettel[K]asten [L]inkto Search Title"})

      vim.keymap.set("n", "<leader>kt", function()
        vim.cmd("ZkTags")
      end, { desc = "Zettel[K]asten [T]ags Picker"})

      -- content search notes based on selected text
      vim.keymap.set("v", "<leader>kl", function()
        vim.cmd("ZkInsertLinkAtSelection {matchSelected = true}")
      end, { desc = "Zettel[K]asten [L]inkto Match Selected"})

    end
  }
}

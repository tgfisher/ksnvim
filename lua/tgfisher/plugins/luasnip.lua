return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_lua").load(
          { paths = { vim.fn.expand("~") .. "/.config/nvim/lua/tgfisher/plugins/snippets/" } }
      )
    end,
  },
}

return {
  "folke/snacks.nvim",
  lazy = false,
  ---@type snacks.Config
  opts = {
    picker = {
      sources = {
        explorer = {
          layout = { layout = { position = "left", width = 0.20 } },
          ignored = true,
          hidden = true,
        },
      },
    },
  },
}

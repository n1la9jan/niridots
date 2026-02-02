return {
  "folke/snacks.nvim",
  lazy = false,
  ---@type snacks.Config
  opts = {
    picker = {
      sources = {
        explorer = {
          layout = { layout = { position = "right", width = 0.15 } },
          ignored = true,
          hidden = true,
        },
      },
    },
  },
}

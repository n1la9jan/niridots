return {
  "maxmx03/solarized.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("solarized").setup({
      transparent = {
        enabled = false,
        pmenu = true,
        normal = true,
        normalfloat = true,
        neotree = true,
        nvimtree = true,
        whichkey = true,
        telescope = true,
      },
      palette = "solarized",
      styles = {
        enabled = true,
        types = { italic = true },
        functions = { italic = true },
        parameters = { italic = true },
        comments = { italic = true },
        strings = { italic = true },
        keywords = { italic = true },
        variables = { italic = true },
        constants = { italic = true },
      },
    })
  end,
}

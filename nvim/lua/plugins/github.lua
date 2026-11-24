return {
  "projekt0n/github-nvim-theme",
  name = "github-theme",
  lazy = false,
  priority = 1000,
  config = function()
    require("github-theme").setup({
      options = {
        styles = { -- Style to be applied to different syntax groups
          comments = "italic", -- Value is any valid attr-list value `:help attr-list`
          functions = "bold",
          keywords = "italic, bold",
          variables = "bold",
          conditionals = "italic, bold",
          constants = "italic",
          numbers = "dim",
          operators = "NONE",
          strings = "bold",
          types = "italic",
        },
      },
      darken = { -- Darken floating windows and sidebar-like windows
        floats = true,
        sidebars = {
          enable = false,
          list = {}, -- Apply dark background to specific windows
        },
      },
    })
  end,
}

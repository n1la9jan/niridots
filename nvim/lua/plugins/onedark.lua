return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("onedarkpro").setup({
      options = {
        transparency = false,
        terminal_colors = false,
      },
      styles = {
        types = "italic",
        methods = "italic",
        numbers = "italic",
        strings = "italic",
        comments = "italic",
        keywords = "bold,italic",
        constants = "italic",
        functions = "bold, italic",
        operators = "italic",
        variables = "italic",
        parameters = "bold",
        conditionals = "italic",
        virtual_text = "NONE",
      },
      highlights = {
        Directory = { bold = true },
        ErrorMsg = { italic = true, bold = true },
      },
    })
  end,
}

return {
  dir = vim.fn.expand("~/Documents/Codex/projects/silicone.nvim"),
  name = "silicone.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("silicone").setup({
      terminal_colors = true,
      transparent = false,
      styles = {
        comments = "italic,underdotted",
        functions = { "bold", "underline" },
        variables = "italic,nocombine",
        keywords = "bold",
        strings = "NONE",
        types = "italic",
        operators = "italic",
        diagnostics = "undercurl",
      },
    })
  end,
}

return {
  "sainnhe/everforest",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.everforest_enable_italic = true
    vim.g.everforest_disable_italic_comment = false
    vim.g.everforest_background = "hard"
    vim.g.everforest_diagnostic_text_highlight = true
    vim.g.everforest_disable_terminal_colors = false
    vim.g.everforest_better_performance = true
  end,
}

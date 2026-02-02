return {
  "marcinjahn/gemini-cli.nvim",
  cmd = "Gemini",
  -- Example key mappings for common actions:
  keys = {
    { "<leader>a/", "<cmd>Gemini toggle<cr>", desc = "Toggle Gemini CLI" },
    {
      "<leader>aa",
      "<cmd>Gemini ask<cr>",
      desc = "Ask Gemini",
      mode = { "n", "v" },
    },
    { "<leader>af", "<cmd>Gemini add_file<cr>", desc = "Add File" },
  },
  dependencies = {
    "folke/snacks.nvim",
  },
  config = function()
    require("gemini_cli").setup({
      -- Command that executes GeminiCLI
      gemini_cmd = "gemini",
      -- Command line arguments passed to gemini-cli
      args = {},
      -- Automatically reload buffers changed by GeminiCLI (requires vim.o.autoread = true)
      auto_reload = true,
      -- snacks.picker.layout.Config configuration
      picker_cfg = {
        preset = "vscode",
      },
      -- Other snacks.terminal.Opts options
      config = {
        os = { editPreset = "nvim-remote" },
        gui = { nerdFontsVersion = "3" },
      },
      win = {
        wo = { winbar = "GeminiCLI" },
        style = "gemini_cli",
        position = "left",
      },
    })
  end,
}

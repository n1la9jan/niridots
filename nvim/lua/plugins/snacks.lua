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
  init = function()
    -- Sync explorer background with the editor canvas dynamically
    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = function()
        vim.api.nvim_set_hl(0, "SnacksExplorer", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "SnacksExplorerDelegate", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "SnacksNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "SnacksNormalNC", { bg = "NONE" })
      end,
    })
  end,
}

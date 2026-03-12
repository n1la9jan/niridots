return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    table.insert(opts.sections.lualine_x, {
      function()
        return "💜"
      end,
    })
  end,

  config = function()
    require("lualine").setup({})
  end,
}

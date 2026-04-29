-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.autoread = true
vim.o.mousemoveevent = true
local function set_dynamic_colorscheme()
  local scheme = vim.o.background == "light" and "catppuccin" or "catppuccin"
  vim.cmd.colorscheme(scheme)
end
vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = set_dynamic_colorscheme,
})
set_dynamic_colorscheme()

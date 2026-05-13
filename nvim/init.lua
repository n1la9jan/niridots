-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.autoread = true
vim.o.mousemoveevent = true
local function detect_background()
  local handle = io.popen(
    "gsettings get org.gnome.desktop.interface color-scheme 2>/dev/null"
  )
  if not handle then
    return "dark"
  end

  local result = handle:read("*a")
  handle:close()

  if result:match("dark") then
    return "dark"
  else
    return "light"
  end
end

local function set_dynamic_colorscheme()
  local bg = detect_background()
  vim.o.background = bg

  if bg == "light" then
    vim.cmd.colorscheme("dawnfox")
  else
    vim.cmd.colorscheme("carbonfox")
  end
end

set_dynamic_colorscheme()

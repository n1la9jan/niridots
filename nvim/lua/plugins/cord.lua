local quotes = {
  "GTA VI came out before my Rust program finished compiling. ⏳",
  "When your code works on the first try. 😱",
  "It’s not a bug, it’s a feature. 🐛✨",
  "I don’t always test my code, but when I do, I do it in production. 💥",
  "My code works, I have no idea why. 🤷‍♂️",
  "Hello from the other side... of a merge conflict. 🔀",
  "If it works, don’t touch it. 🛑",
  "May your code never compile on the first try. 🤞",
}

return {
  "vyfor/cord.nvim",
  build = ":Cord update",
  opts = function()
    return {
      editor = {
        client = "lunarvim",
        tooltip = "I use Arch BTW",
      },
      display = {
        theme = "catppuccin",
        flavor = "dark",
        swap_icons = true,
      },
      text = {
        workspace = function(opts)
          local hour = tonumber(os.date("%H"))
          local status = hour >= 22 and "🌙 Late night coding"
            or hour >= 18 and "🌆 Evening session"
            or hour >= 12 and "☀️ Afternoon coding"
            or hour >= 5 and "🌅 Morning productivity"
            or "🌙 Midnight hacking"

          return string.format("%s: %s", status, opts.filename)
        end,
      },
      hooks = {
        post_activity = function(_, activity)
          activity.details = quotes[math.random(#quotes)]
        end,
      },
    }
  end,
}

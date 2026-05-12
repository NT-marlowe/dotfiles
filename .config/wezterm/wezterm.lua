local wezterm = require 'wezterm'
local act = wezterm.action

return {
    font_size = 14.0,
    font = wezterm.font ({
          family = "JetBrains Mono",
          harfbuzz_features = {"calt=0", "clig=0", "liga=0"}
    }),
    window_background_opacity = 0.85,
    macos_window_background_blur = 20,
    -- https://wezfurlong.org/wezterm/colorschemes/t/index.html
    color_scheme = "Hybrid (terminal.sexy)",

    -- keys = require 'keybind'
    enable_kitty_keyboard = true,
    keys = {
        -- workaround for Shift+Enter being treated as Enter in zellij
        -- https://github.com/zellij-org/zellij/issues/4159
        {
            key = "Enter",
            mods = "SHIFT",
            action = wezterm.action.SendString("\x1b[200~\n\x1b[201~"),
        },
    },
}

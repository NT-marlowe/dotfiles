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
}

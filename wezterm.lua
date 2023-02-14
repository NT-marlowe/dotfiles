local wezterm = require 'wezterm'
local act = wezterm.action

return {
    font_size = 14.0,
    window_background_opacity = 0.6,
    color_scheme = "iceberg-dark",

    keys = {{
        key = "t",
        mods = "CTRL",
        action = act.SpawnTab 'CurrentPaneDomain'
    }, {
        key = "w",
        mods = "CTRL",
        action = act.CloseCurrentPane {
            confirm = false
        }
    }}
}

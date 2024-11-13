local wezterm = require 'wezterm'
local act = wezterm.action

return {
    font_size = 14.0,
    window_background_opacity = 0.7,
    -- https://wezfurlong.org/wezterm/colorschemes/t/index.html
    color_scheme = "Hybrid (terminal.sexy)",
    font = wezterm.font("Source Han Code JP"),

    keys = {{
        key = 't',
        mods = 'CTRL',
        action = act.SpawnTab 'CurrentPaneDomain'
    }, {
        key = 'w',
        mods = 'CTRL|SHIFT',
        action = act.CloseCurrentPane {
            confirm = false
        }
    }, {
        key = '1',
        mods = 'CTRL|SHIFT',
        action = act.SplitVertical {
            domain = 'CurrentPaneDomain'
        }
    }, {
        key = '2',
        mods = 'CTRL|SHIFT',
        action = act.SplitHorizontal {
            domain = 'CurrentPaneDomain'
        }
    }, {
        key = 'h',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Left'
    }, {
        key = 'l',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Right'
    }, {
        key = 'k',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Up'
    }, {
        key = 'j',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Down'
    }}
}

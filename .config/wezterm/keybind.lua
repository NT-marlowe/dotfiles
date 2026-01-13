local wezterm = require 'wezterm'
local act = wezterm.action

return {{
    key = 't',
    mods = 'CTRL',
    action = act.SpawnTab 'CurrentPaneDomain'
}, {
    key = 'd',
    mods = 'CTRL|SHIFT',
    action = act.ShowDebugOverlay
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

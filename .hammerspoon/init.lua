-- [claude-code: log mirror]
do
  local _orig_print = print
  local _log_path = "/tmp/hammerspoon.log"
  print = function(...)
    _orig_print(...)
    local args = {...}
    for i, v in ipairs(args) do args[i] = tostring(v) end
    local line = os.date("%H:%M:%S") .. "\t" .. table.concat(args, "\t") .. "\n"
    local f = io.open(_log_path, "a")
    if f then f:write(line); f:close() end
  end
end
-- [/claude-code: log mirror]

require("hs.ipc")

require('lua.load_spoons')
require('lua.keymaps')


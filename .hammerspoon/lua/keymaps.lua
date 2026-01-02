local function keyCode(key, modifiers)
    modifiers = modifiers or {}
    return function()
       hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
       hs.timer.usleep(1000)
       hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
    end
 end

local function remapKey(modifiers, key, keyCode)
   hs.hotkey.bind(modifiers, key, keyCode, nil, keyCode)
end

remapKey({'ctrl'}, 'h', keyCode('left'))
remapKey({'ctrl'}, 'j', keyCode('down'))
remapKey({'ctrl'}, 'k', keyCode('up'))
-- Ctrl+L is special: some terminals use it for "clear screen", so we only remap
-- it outside those apps to avoid breaking the native shortcut.
local ctrlLHotkey = hs.hotkey.new({'ctrl'}, 'l', keyCode('right'), nil, keyCode('right'))
ctrlLHotkey:enable()

-- We use an application watcher so we don't check the frontmost app on every
-- key press; instead we toggle Ctrl+L once when focus changes.
local ctrlLDisabledBundleIDs = {
   ["com.googlecode.iterm2"] = true,
   ["com.github.wez.wezterm"] = true,
}

local function isCtrlLDisabledForApp(app)
   local bundleID = app and app:bundleID() or ""
   return ctrlLDisabledBundleIDs[bundleID] == true
end

local function updateCtrlLForApp(appName, eventType, app)
   if eventType ~= hs.application.watcher.activated then
      return
   end

   if isCtrlLDisabledForApp(app) then
      ctrlLHotkey:disable()
   else
      ctrlLHotkey:enable()
   end
end

local appWatcher = hs.application.watcher.new(updateCtrlLForApp)
appWatcher:start()

local frontmostApp = hs.application.frontmostApplication()
if isCtrlLDisabledForApp(frontmostApp) then
   ctrlLHotkey:disable()
end

remapKey({'ctrl', 'cmd'}, 'h', keyCode('left', {'cmd'}))
remapKey({'ctrl', 'cmd'}, 'j', keyCode('down', {'cmd'}))
remapKey({'ctrl', 'cmd'}, 'k', keyCode('up', {'cmd'}))
remapKey({'ctrl', 'cmd'}, 'l', keyCode('right', {'cmd'}))

remapKey({'ctrl', 'alt'}, 'h', keyCode('left', {'alt'}))
remapKey({'ctrl', 'alt'}, 'j', keyCode('down', {'alt'}))
remapKey({'ctrl', 'alt'}, 'k', keyCode('up', {'alt'}))
remapKey({'ctrl', 'alt'}, 'l', keyCode('right', {'alt'}))

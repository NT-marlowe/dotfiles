# Installing the `hs` CLI tool — pitfalls and notes

Source read: `/Applications/Hammerspoon.app/Contents/Resources/extensions/hs/ipc.lua`

## `path` is a prefix root, not a bin directory

The official docs say:

> `path` - An optional string containing a path to install the tool in. Defaults to `/usr/local`

This is misleading. The function appends `/bin/hs` and `/share/man/man1/hs.1` to whatever you pass:

```lua
-- from ipc.lua:
os.execute("ln -s \"..frameworksPath../hs/hs\" \"" .. path .. "/bin/\"")
os.execute("ln -s \"..resourcePath../man/hs.man\" \"" .. path .. "/share/man/man1/hs.1\"")
```

So for `~/.local/bin`, the correct call is:

```lua
hs.ipc.cliInstall("/Users/naoya/.local")    -- correct: creates ~/.local/bin/hs
hs.ipc.cliInstall("/Users/naoya/.local/bin") -- WRONG: creates ~/.local/bin/bin/hs
```

## `hs.ipc` must be loaded first

`require("hs.ipc")` must appear in `init.lua` before `cliInstall` is available. Without it, `hs.ipc` is nil and the call fails silently.

## Both the binary AND the man page are required

`cliInstall` returns the result of `cliStatus`, which checks all of:

- `{path}/bin/hs` exists, is a symlink, and points to Hammerspoon's own binary
- `{path}/share/man/man1/hs.1` exists, is a symlink, and points to Hammerspoon's own man page

If either is missing (e.g. `~/.local/share/man/man1/` doesn't exist yet), `cliStatus` returns the string `"broken"` and prints to the console:

```
cli installation problem: incomplete installation of 'hs' and 'hs.1'.
```

Pre-create the man directory before calling `cliInstall`:

```sh
mkdir -p ~/.local/share/man/man1
```

## AppTranslocation pitfall

If Hammerspoon was ever launched from outside `/Applications` (e.g. directly from a mounted DMG), macOS AppTranslocation runs it from a randomized temp path like:

```
/private/var/folders/.../AppTranslocation/.../Hammerspoon.app/...
```

`cliInstall` uses `hs.processInfo["frameworksPath"]` internally, which returns this temp path. The resulting symlink points to a location that won't survive a reboot or re-launch.

Fix: remove the bad symlink and create one pointing to the real app path directly:

```sh
rm ~/.local/bin/hs
ln -sf /Applications/Hammerspoon.app/Contents/Frameworks/hs/hs ~/.local/bin/hs
```

## Recommended install flow (custom prefix like `~/.local`)

```sh
mkdir -p ~/.local/bin ~/.local/share/man/man1
```

Add to `~/.hammerspoon/init.lua`:

```lua
require("hs.ipc")
```

Reload Hammerspoon, then in the console:

```lua
hs.ipc.cliInstall("/Users/naoya/.local")  -- should return true
```

Verify in terminal:

```sh
which hs && hs -c 'return "works"'
```

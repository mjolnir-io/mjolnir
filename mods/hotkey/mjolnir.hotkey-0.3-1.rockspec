package = "mjolnir.hotkey"
version = "0.3-1"
local desc = "Mjolnir module to create and manage global hotkeys."
source = {url = "https://github.com/sdegutis/mjolnir" }
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://github.com/sdegutis/mjolnir/tree/master/mods/hotkey",
  license = "MIT",
}
supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
  "mjolnir.keycodes",
}
build = {
  type = "builtin",
  modules = {
    ["mjolnir.hotkey"] = "hotkey.lua",
    ["mjolnir.hotkey.internal"] = "hotkey.m",
  },
}

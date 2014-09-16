package = "mjolnir.hotkey"
version = "0.4-1"
local url = "github.com/mjolnir-io/mjolnir-modules"
local desc = "Mjolnir module to create and manage global hotkeys and modal hotkeys."
source = {url = "git://" .. url}
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://" .. url,
  license = "MIT",
}
supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
  "mjolnir.keycodes",
  "mjolnir.fnutils",
}
build = {
  type = "builtin",
  modules = {
    ["mjolnir.hotkey"] = "hotkey.lua",
    ["mjolnir.hotkey.internal"] = "hotkey.m",
  },
}

package = "mjolnir.screen"
version = "0.2-1"
local desc = "Mjolnir module to inspect and manipulate screens (i.e. monitors)."
source = {url = "https://github.com/sdegutis/mjolnir" }
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://github.com/sdegutis/mjolnir/tree/master/mods/screen",
  license = "MIT",
}
supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
  "mjolnir.fnutils",
  "mjolnir.geometry",
}
build = {
  type = "builtin",
  modules = {
    ["mjolnir.screen"] = "screen.lua",
    ["mjolnir.screen.internal"] = "screen.m",
  },
}

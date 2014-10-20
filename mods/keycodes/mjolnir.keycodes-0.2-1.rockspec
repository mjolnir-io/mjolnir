package = "mjolnir.keycodes"
version = "0.2-1"
local desc = "Mjolnir module to convert between key-strings and key-codes."
source = {url = "https://github.com/sdegutis/mjolnir" }
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://github.com/sdegutis/mjolnir/tree/master/mods/keycodes",
  license = "MIT",
}
supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
}
build = {
  type = "builtin",
  modules = {
    ["mjolnir.keycodes"] = "keycodes.lua",
    ["mjolnir.keycodes.internal"] = "keycodes.m",
  },
}

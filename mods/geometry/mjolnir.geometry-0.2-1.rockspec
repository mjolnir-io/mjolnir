package = "mjolnir.geometry"
version = "0.2-1"
local url = "github.com/sdegutis/mjolnir-modules"
local desc = "Mjolnir module to help with mathy stuff."
source = {url = "https://github.com/sdegutis/mjolnir" }
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://github.com/sdegutis/mjolnir/tree/master/mods/geometry",
  license = "MIT",
}
supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
}
build = {
  type = "builtin",
  modules = {
    ["mjolnir.geometry"] = "geometry.lua",
    ["mjolnir.geometry.internal"] = "geometry.m",
  },
}

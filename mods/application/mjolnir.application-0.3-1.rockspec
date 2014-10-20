package = "mjolnir.application"
version = "0.3-1"
local desc = "Mjolnir module to inspect and manipulate running applications and their windows."
source = {url = "https://github.com/sdegutis/mjolnir" }
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://github.com/sdegutis/mjolnir/tree/master/mods/application",
  license = "MIT",
}
supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
  "mjolnir.fnutils",
  "mjolnir.geometry",
  "mjolnir.screen",
}
build = {
  type = "builtin",
  modules = {
    ["mjolnir.application"] = "application.lua",
    ["mjolnir.application.internal"] = "application.m",
    ["mjolnir.window"] = "window.lua",
    ["mjolnir.window.internal"] = "window.m",
  },
}

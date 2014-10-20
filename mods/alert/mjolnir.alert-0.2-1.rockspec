package = "mjolnir.alert"
version = "0.2-1"
local desc = "Mjolnir module to show brief messages on-screen."
source = {url = "https://github.com/sdegutis/mjolnir" }
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://github.com/sdegutis/mjolnir/tree/master/mods/alert",
  license = "MIT",
}
supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
}
build = {
  type = "builtin",
  modules = {
    ["mjolnir.alert"] = "alert.m",
  },
}

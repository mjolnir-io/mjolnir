package = "mjolnir.fnutils"
version = "0.1-1"
local desc = "Mjolnir module to help with functional programming."
source = {url = "https://github.com/sdegutis/mjolnir" }
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://github.com/sdegutis/mjolnir/tree/master/mods/fnutils",
  license = "MIT",
}
supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
}
build = {
  type = "builtin",
  modules = {
    ["mjolnir.fnutils"] = "fnutils.lua",
  },
}

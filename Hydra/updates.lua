doc.api.updates.available = {"api.updates.available = function(newversion, currentversion, changelog)", "Called when an update is avaiable, determined by api.updates.check(). Default implementation pushes a notification about it with the tag 'showupdate'."}
function api.updates.available(newversion, currentversion, changelog)
  api.notify.show("Hydra update available", "", "Click here to see the changelog and maybe even install it", "update")
end
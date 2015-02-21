NiandraMOTD = {}

//Serverside stuff - See client/cl_niandramotd_config for design stuff!
NiandraMOTD.ChatCommand = "!motd" -- What command should players enter in chat to re-access the MOTD?
NiandraMOTD.ConsoleCommand = "niandramotd" -- What command should players enter in console to re-access the MOTD?
NiandraMOTD.WhitelistedGroups = { "owner", "admin" } -- What groups should NOT see the MOTD when they enter the server?

NiandraMOTD.ShowOnSpawn = true -- Should the menu appear when you first initially spawn?

if SERVER then
	resource.AddFile("materials/niandralades/motd/64/64_cancel.png")
	resource.AddFile("materials/niandralades/motd/32/32_gamemode.png")
	resource.AddFile("materials/niandralades/motd/32/32_map.png")
	resource.AddFile("materials/niandralades/motd/32/32_website.png")
	
	resource.AddFile("resource/fonts/bebasneue.ttf")
end


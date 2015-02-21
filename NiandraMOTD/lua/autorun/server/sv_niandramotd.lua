 util.AddNetworkString( "NiandraMOTD_Open" )
 
hook.Add("PlayerSay", "NiandraMOTD_Open", function(ply, text, uselessvariable)
	if (text == NiandraMOTD.ChatCommand) then
		net.Start("NiandraMOTD_Open")
		net.Send(ply)
	end
end)

hook.Add("PlayerInitialSpawn", "NiandraMOTD_Spawn", function(ply)
	if NiandraMOTD.ShowOnSpawn then
	timer.Create("NiandraMOTD_Check", 1, 0, function()
		if ply:IsValid() then
			if not table.HasValue(NiandraMOTD.WhitelistedGroups, ply:GetUserGroup()) then
				net.Start("NiandraMOTD_Open")
				net.Send(ply)
				timer.Destroy("NiandraMOTD_Check")
			else
				timer.Destroy("NiandraMOTD_Check")
			end
		end	
	end)	
	end
end)

concommand.Add(NiandraMOTD.ConsoleCommand, function(ply)
	net.Start("NiandraMOTD_Open")
	net.Send(ply)
end)
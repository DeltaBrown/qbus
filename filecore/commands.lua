QBCore.Commands = {}
QBCore.Commands.List = {}

QBCore.Commands.Add = function(name, help, arguments, argsrequired, callback, permission) -- [name] = command name (ex. /givemoney), [help] = help text, [arguments] = arguments that need to be passed (ex. {{name="id", help="ID of a player"}, {name="amount", help="amount of money"}}), [argsrequired] = set arguments required (true or false), [callback] = function(source, args) callback, [permission] = rank or job of a player
	QBCore.Commands.List[name:lower()] = {
		name = name:lower(),
		permission = permission ~= nil and permission:lower() or "user",
		help = help,
		arguments = arguments,
		argsrequired = argsrequired,
		callback = callback,
	}
end

QBCore.Commands.Refresh = function(source)
	local Player = QBCore.Functions.GetPlayer(tonumber(source))
	if Player ~= nil then
		for command, info in pairs(QBCore.Commands.List) do
			if QBCore.Functions.HasPermission(source, "god") or QBCore.Functions.HasPermission(source, QBCore.Commands.List[command].permission) then
				TriggerClientEvent('chat:addSuggestion', source, "/"..command, info.help, info.arguments)
			end
		end
	end
end

QBCore.Commands.Add("tp", "Teleport to a player or location", {{name="id/x", help="ID of a player or X position"}, {name="y", help="Y position"}, {name="z", help="Z position"}}, false, function(source, args)
	if (args[1] ~= nil and (args[2] == nil and args[3] == nil)) then
		-- tp to player
		local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
		if Player ~= nil then
			TriggerClientEvent('QBCore:Command:TeleportToPlayer', source, Player.PlayerData.source)
		else
			TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")
		end
	else
		-- tp to location
		if args[1] ~= nil and args[2] ~= nil and args[3] ~= nil then
			local x = tonumber(args[1])
			local y = tonumber(args[2])
			local z = tonumber(args[3])
			TriggerClientEvent('QBCore:Command:TeleportToCoords', source, x, y, z)
		else
			TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Not every argument is filled in (x, y, z)")
		end
	end
end, "admin")

QBCore.Commands.Add("addpermission", "Give permission to someone (god / admin)", {{name="id", help="ID of the player"}, {name="permission", help="Permission level"}}, true, function(source, args)
	local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	local permission = tostring(args[2]):lower()
	if Player ~= nil then
		QBCore.Functions.AddPermission(Player.PlayerData.source, permission)
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")	
	end
end, "god")

QBCore.Commands.Add("removepermission", "Take permission from someone", {{name="id", help="ID of the player"}}, true, function(source, args)
	local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if Player ~= nil then
		QBCore.Functions.RemovePermission(Player.PlayerData.source)
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")	
	end
end, "god")

--[[QBCore.Commands.Add("unjail", "Unjail Player", {{name = "id", help = "Player ID"}}, true, function(source, args)
	local src = source
    local target = tonumber(args[1])
    TriggerClientEvent('prison:client:UnjailPerson', src, target)
end)--]]

QBCore.Commands.Add("sv", "Spawn a vehicle", {{name="model", help="Model name of the vehicle."}}, true, function(source, args)
	TriggerClientEvent('QBCore:Command:SpawnVehicle', source, args[1])
end, "admin")

QBCore.Commands.Add("debug", "Turn debug mode on / off.", {}, false, function(source, args)
	TriggerClientEvent('koil-debug:toggle', source)
end, "god")

QBCore.Commands.Add("dv", "Spawn a vehicle", {}, false, function(source, args)
	TriggerClientEvent('QBCore:Command:DeleteVehicle', source)
end, "admin")

QBCore.Commands.Add("tpm", "Teleport to a marker", {}, false, function(source, args)
	TriggerClientEvent('QBCore:Command:GoToMarker', source)
end, "god")

QBCore.Commands.Add("givemoney", "Give money to a player", {{name="id", help="Player ID"},{name="moneytype", help="Type geld (cash, bank, crypto)"}, {name="amount", help="Number of munnies"}}, true, function(source, args)
	local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if Player ~= nil then
		Player.Functions.AddMoney(tostring(args[2]), tonumber(args[3]))
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")
	end
end, "god")

QBCore.Commands.Add("setmoney", "Set money for a player", {{name="id", help="Player ID"},{name="moneytype", help="Type geld (cash, bank, crypto)"}, {name="amount", help="Number of munnies"}}, true, function(source, args)
	local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if Player ~= nil then
		Player.Functions.SetMoney(tostring(args[2]), tonumber(args[3]))
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")
	end
end, "god")

QBCore.Commands.Add("setjob", "Set a job for a player.", {{name="id", help="Player ID"}, {name="job", help="Job name"}, {name="grade", help= "Grade"}}, true, function(source, args)
	local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if Player ~= nil then
		Player.Functions.SetJob(tostring(args[2]), tonumber(args[3]))
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")
	end
end, "admin")

QBCore.Commands.Add("setgang", "Set Player's gang.", {{name="id", help="Player ID"}, {name="gang", help="Gang Name"}, {name="level", help= "Grade in Gang"}}, true, function(source, args)
	local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	local name = tostring(args[2])
	local level = tonumber(args[3])

	if Player ~= nil then
		if level then
			if level <= QBCore.Shared.Gangs[name].maxLevel and level >= 0 then
				Player.Functions.SetGang(name, level)
			else
				TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Invalid Level. Gang's max level (grade) is " ..QBCore.Shared.Gangs[name].maxLevel.."")
			end
		else
			TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Invalid Level. Gang's max level (grade) is " ..QBCore.Shared.Gangs[name].maxLevel.."")
		end
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")
	end
end, "god")

QBCore.Commands.Add("testnotify", "test notify", {{name="text", help="Text and stuff"}}, true, function(source, args)
	TriggerClientEvent('QBCore:Notify', source, table.concat(args, " "), "success")
end, "god")

QBCore.Commands.Add("job", "See what your job is", {}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
	TriggerClientEvent('chatMessage', source, "SYSTEM", "warning", "Your Job: "..Player.PlayerData.job.label.. " - Level: " ..Player.PlayerData.job.level.."")
	--[[local Player = QBCore.Functions.GetPlayer(source)
	
	if Player ~= nil then
		local jobLevel = Player.PlayerData.job.level
		local f = QBCore.Shared.Jobs[job].grades
		for k,v in pairs(f) do
			if k == jobLevel then
				TriggerClientEvent('chatMessage', source, "SYSTEM", "warning", "Your Job : "..Player.PlayerData.job.label.. " Level : " ..v.."" )
			end
		end
	end--]]
end)

QBCore.Commands.Add("gang", "See what your Gang is", {}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
	TriggerClientEvent('chatMessage', source, "SYSTEM", "warning", "Your Gang : "..Player.PlayerData.gang.label.. " and Level (Grade) : " ..Player.PlayerData.gang.level.."")
end)

QBCore.Commands.Add("clearinv", "Empty the inventory of yourself or a player", {{name="id", help="Player ID"}}, false, function(source, args)
	local playerId = args[1] ~= nil and args[1] or source 
	local Player = QBCore.Functions.GetPlayer(tonumber(playerId))
	if Player ~= nil then
		Player.Functions.ClearInventory()
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")
	end
end, "god")

QBCore.Commands.Add("ooc", "Out Of Character chat message (only use when necessary)", {}, false, function(source, args)
	local Players = QBCore.Functions.GetPlayers()
	local message = table.concat(args, " ")
	TriggerClientEvent("QBCore:Client:LocalOutOfCharacter", -1, source, GetPlayerName(source), message)
	--TriggerEvent("QBCore_log:server:CreateLog", "ooc", "OOC", "white", "**"..GetPlayerName(source).."** (CitizenID: "..Player.PlayerData.citizenid.." | ID: "..source..") **Message:** " ..message, false)

	--[[for k, v in pairs(QBCore.Functions.GetPlayers()) do
		if QBCore.Functions.HasPermission(v, "admin") then
			if QBCore.Functions.IsOptin(v) then
				TriggerClientEvent('chatMessage', v, "OOC | " .. GetPlayerName(source), "normal", message)
			end
		end
	end--]]
end)
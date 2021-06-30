RegisterServerEvent('InteractSound_SV:NukeExplosion')
RegisterServerEvent('InteractSound_SV:Incoming')
RegisterServerEvent('InteractSound_SV:CountDownBeep')

RegisterCommand("nuke", function(source, args, rawCommand)
	if IsPlayerAceAllowed(source, Config.NukeAceGroup) then
		TriggerClientEvent("nuclear:bomb.cl", -1, 0)
	else
		TriggerClientEvent("chatMessage", source, "^3You must be an ^2Administrator ^3to do this.", {255, 255, 255})
	end
end)
RegisterCommand("nuketest", function(source, args, rawCommand)
	if IsPlayerAceAllowed(source, Config.NukeAceGroup) then
		TriggerClientEvent("nuclear:bomb.cl", source, 0)
	else
		TriggerClientEvent("chatMessage", source, "^3You must be an ^2Administrator ^3to do this.", {255, 255, 255})
	end
end)
RegisterCommand("nuke_exp_sound", function(source, args, rawCommand)
	if IsPlayerAceAllowed(source, Config.NukeAceGroup) then
		TriggerClientEvent('InteractSound_CL:NukeExplosion', -1, soundFile, soundVolume)
	else
		TriggerClientEvent("chatMessage", source, "^3You must be an ^2Administrator ^3to do this.", {255, 255, 255})
	end
end)
RegisterCommand("nuke_incom_sound", function(source, args, rawCommand)
	if IsPlayerAceAllowed(source, Config.NukeAceGroup) then
		TriggerClientEvent('InteractSound_CL:Incoming', -1, soundFile, soundVolume)
	else
		TriggerClientEvent("chatMessage", source, "^3You must be an ^2Administrator ^3to do this.", {255, 255, 255})
	end
end)
RegisterCommand("nuke_beep_sound", function(source, args, rawCommand)
	if IsPlayerAceAllowed(source, Config.NukeAceGroup) then
		TriggerClientEvent('InteractSound_CL:CountDownBeep', -1, soundFile, soundVolume)
	else
		TriggerClientEvent("chatMessage", source, "^3You must be an ^2Administrator ^3to do this.", {255, 255, 255})
	end
end)
RegisterCommand("exp_all_veh", function(source, args, rawCommand)
	if IsPlayerAceAllowed(source, Config.NukeAceGroup) then
		TriggerClientEvent("nuke:explodevehicles", -1, soundFile, soundVolume)
	else
		TriggerClientEvent("chatMessage", source, "^3You must be an ^2Administrator ^3to do this.", {255, 255, 255})
	end
end)

--Audio Triggers
AddEventHandler('InteractSound_SV:NukeExplosion', function(soundFile, soundVolume)
    TriggerClientEvent('InteractSound_CL:NukeExplosion', source, soundFile, soundVolume)
end)
AddEventHandler('InteractSound_SV:Incoming', function(soundFile, soundVolume)
    TriggerClientEvent('InteractSound_CL:Incoming', source, soundFile, soundVolume)
end)
AddEventHandler('InteractSound_SV:CountDownBeep', function(soundFile, soundVolume)
    TriggerClientEvent('InteractSound_CL:CountDownBeep', source, soundFile, soundVolume)
end)


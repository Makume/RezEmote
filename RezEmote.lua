if not RezEmote then 
	RezEmote = {} 
end

function RezEmote.Initialize()
	RegisterEventHandler(SystemData.Events.PLAYER_DEATH, "RezEmote.Rez")
end

function RezEmote.Rez()
	SendChatText(towstring(L"/rez"), L"")
end

function RezEmote.isScenario()
	if GameData.Player.isInScenario then
		return true
	end
	if GameData.Player.zone == 167 then -- IC
		return true
	end
	if GameData.Player.zone == 168 then -- Altdorf
		return true
	end
	return false
end

function RezEmote.Shutdown()
	UnregisterEventHandler(SystemData.Events.PLAYER_DEATH, "RezEmote.Rez");
end
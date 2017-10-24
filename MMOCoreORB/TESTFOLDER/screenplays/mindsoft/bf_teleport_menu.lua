bf_teleport_menu = {  }

function bf_teleport_menu:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	if (pPlayer == nil) then
		return false
	end

	local pInventory = CreatureObject(pPlayer):getSlottedObject("inventory")
	if pInventory == nil then
		return false
	end

	local name = LuaSceneObject(pSceneObject):getCustomObjectName()
	local response = LuaObjectMenuResponse(pMenuResponse)

------------(SHUTTLE PASSES)

-- Cnet single
	if name == "Cnet Transmission Pass (System Generated)" or name == "Cnet Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_cnet.iff", true)
		if pItem == nil then
			return false
		end
		
		response:addRadialMenuItem(20, 3, "Teleport to Cnet")

-- Theed single
	elseif name == "Theed Transmission Pass (System Generated)" or name == "Theed Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_theed.iff", true)
		if pItem == nil then
			return false
		end
		
		response:addRadialMenuItem(20, 3, "Teleport to Theed")

-- Eisley single
	elseif name == "Eisley Transmission Pass (System Generated)" or name == "Eisley Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_eisley.iff", true)
		if pItem == nil then
			return false
		end
		
		response:addRadialMenuItem(20, 3, "Teleport to Eisley")

-- Golden Shuttle pass
	elseif name == "Golden Transmission Pass (System Generated)" or name == "Golden Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_gold_cnet.iff", true)
		if pItem == nil then
			return false
		end
		
		response:addRadialMenuItem(20, 3, "Teleport to Cnet")
		response:addRadialMenuItem(21, 3, "Teleport to Hoth")
		response:addRadialMenuItem(22, 3, "Teleport to Kashyyyk")
		response:addRadialMenuItem(23, 3, "Teleport to Kaas")

-- Group Cnet pass
	elseif name == "Cnet Group Transmission Pass (System Generated)" or name == "Cnet Group Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_cnet_group.iff", true)
		if pItem == nil then
			return false
		end
		
		response:addRadialMenuItem(20, 3, "Teleport to Cnet")

-- Golden Group Shuttle pass
	elseif name == "Golden Group Transmission Pass (System Generated)" or name == "Golden Group Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_gold_cnet_group.iff", true)
		if pItem == nil then
			return false
		end
		
		response:addRadialMenuItem(20, 3, "Teleport to Cnet")
		response:addRadialMenuItem(21, 3, "Teleport to Hoth")
		response:addRadialMenuItem(22, 3, "Teleport to Kashyyyk")
		response:addRadialMenuItem(23, 3, "Teleport to Kaas")

------------(INSTANCE PASSES)

-- Warren single
	elseif name == "Warren Transmission Pass (System Generated)" or name == "Warren Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_warren.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to Warren")
-- Geo single
	elseif name == "Geo Transmission Pass (System Generated)" or name == "Geo Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_geo.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to Geo Caves")
-- Banshee single
	elseif name == "Banshee Transmission Pass (System Generated)" or name == "Banshee Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_banshee.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to Banshee Caves")
-- DWB single
	elseif name == "DWB Transmission Pass (System Generated)" or name == "DWB Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_dwb.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to DWB")
-- Geo Group
	elseif name == "Geo Group Pass (System Generated)" or name == "Geo Group Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_geo_group.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to Geo Caves")
-- DWB Group
	elseif name == "DWB Group Pass (System Generated)" or name == "DWB Group Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_dwb_group.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to DWB")
-- Golden Group Instance Pass
	elseif name == "Golden Group Instance Pass (System Generated)" or name == "Golden Group Instance Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_gold_pve_group.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to DWB")
		response:addRadialMenuItem(21, 3, "Teleport to Warren")
		response:addRadialMenuItem(22, 3, "Teleport to Geo Caves")
		response:addRadialMenuItem(23, 3, "Teleport to Banshee Caves")

------------(PVP PASSES)

-- Golden Group PVP Pass
	elseif name == "Golden Group PVP Pass (System Generated)" or name == "Golden Group PVP Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_gold_pvp_group.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to DWB")
		response:addRadialMenuItem(21, 3, "Teleport to Warren")
		response:addRadialMenuItem(22, 3, "Teleport to Geo Caves")
		response:addRadialMenuItem(23, 3, "Teleport to Banshee Caves")

------------(SPACE PASSES)

-- Nova Orion single
	elseif name == "Nova Orion Transmission Pass (System Generated)" or name == "Nova Orion Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_nova.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to Nova Orion")
-- ISD single
	elseif name == "ISD Transmission Pass (System Generated)" or name == "ISD Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_isd.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to ISD")
-- Avatar single
	elseif name == "Avatar Transmission Pass (System Generated)" or name == "Avatar Transmission Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_avatar.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to Avatar")
-- Golden Space Pass
	elseif name == "Golden Space Pass (System Generated)" or name == "Golden Space Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_gold_space.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to Avatar")
		response:addRadialMenuItem(21, 3, "Teleport to ISD")
		response:addRadialMenuItem(22, 3, "Teleport to Nova Orion")
-- ISD group
	elseif name == "ISD Group Pass (System Generated)" or name == "ISD Group Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_isd_group.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to ISD")
-- Avatar group
	elseif name == "Avatar Group Pass (System Generated)" or name == "Avatar Group Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_avatar_group.iff", true)
		if pItem == nil then
			return false
		end
		response:addRadialMenuItem(20, 3, "Teleport to Avatar")
-- Golden Group Space Pass
	elseif name == "Golden Group Space Pass (System Generated)" or name == "Golden Group Space Pass" then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_gold_space_group.iff", true)
		if pItem == nil then
			return false
		end
		
		response:addRadialMenuItem(20, 3, "Teleport to Avatar")
		response:addRadialMenuItem(21, 3, "Teleport to ISD")
		response:addRadialMenuItem(22, 3, "Teleport to Nova Orion")
	else
		return false
	end
	return 0
end

function bf_teleport_menu:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)

	local range = 35
	local playerCreature = LuaCreatureObject(pPlayer)
	local pCell = LuaSceneObject(pPlayer):getParentID()
	local name = LuaSceneObject(pSceneObject):getCustomObjectName()
	if pCell == nil or pCell ~= 0 then
		playerCreature:sendSystemMessage("You must be outdoors and out of combat to use this item.")
		return 0
	end
	local ported = false
	local pInventory = CreatureObject(pPlayer):getSlottedObject("inventory")
	local pItem = nil

------------(SHUTTLE PASSES)
	
-- Cnet single
	if name == "Cnet Transmission Pass (System Generated)" or name == "Cnet Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_cnet.iff", true)
		if (selectedID == 20) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "corellia", -148.3, 28, -4721.5, 85)
			playerCreature:sendSystemMessage("You are being transmitted to Corellia, Coronet")
		end
-- Theed single
	elseif name == "Theed Transmission Pass (System Generated)" or name == "Theed Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_theed.iff", true)
		if (selectedID == 20) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "naboo", -4898, 6, 4124, 0)
			playerCreature:sendSystemMessage("You are being transmitted to Naboo, Theed")
		end
-- Eisley single
	elseif name == "Eisley Transmission Pass (System Generated)" or name == "Eisley Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_eisley.iff", true)
		if (selectedID == 20) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "tatooine", 3501, 5, -4852, 0)
			playerCreature:sendSystemMessage("You are being transmitted to Tatooine, Eisley")
		end
-- Golden Shuttle pass
	elseif name == "Golden Transmission Pass (System Generated)" or name == "Golden Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_gold_cnet.iff", true)
		if (selectedID == 20) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "corellia", -148.3, 28, -4721.5, 85)
			playerCreature:sendSystemMessage("You are being transmitted to Corellia, Coronet")
		elseif (selectedID == 21) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "hoth", -2246.8, 120.6, 719.9, 0)
			playerCreature:sendSystemMessage("You are being transmitted to Hoth, Starport")
		elseif (selectedID == 22) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "kashyyyk", -4592.1, 100, -2273.2, 0)
			playerCreature:sendSystemMessage("You are being transmitted to Kashyyk, Kachiro")
		elseif (selectedID == 23) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "kaas", -5172, 80, -2224.2, 0)
			playerCreature:sendSystemMessage("You are being transmitted to Kaas, place")
		end
-- Group Cnet pass
	elseif name == "Cnet Group Transmission Pass (System Generated)" or name == "Cnet Group Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_cnet_group.iff", true)
		if (selectedID == 20) then
			--groupSwitchZoneOutOfCombatRange(pPlayer, range, cell, faction, pvpStatus, ..., Destination)
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "corellia", -148.3, 28, -4721.5, 85, "CNET")
			playerCreature:sendSystemMessage("You are being transmitted to Corellia, Coronet")
		end
-- Golden Group Shuttle pass
	elseif name == "Golden Group Transmission Pass (System Generated)" or name == "Golden Group Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_gold_cnet_group.iff", true)
		if (selectedID == 20) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "corellia", -148.3, 28, -4721.5, 85, "CNET")
			playerCreature:sendSystemMessage("You are being transmitted to Corellia, Coronet")
		elseif (selectedID == 21) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "hoth", -2246.8, 120.6, 719.9, 0, "Hoth")
			playerCreature:sendSystemMessage("You are being transmitted to Hoth, Starport")
		elseif (selectedID == 22) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "kashyyyk", -4592.1, 100, -2273.2, 0, "Kashyyk")
			playerCreature:sendSystemMessage("You are being transmitted to Kashyyk, Kachiro")
		elseif (selectedID == 23) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "kaas", -5172, 80, -2224.2, 0, "Kaas")
			playerCreature:sendSystemMessage("You are being transmitted to Kaas, place")
		end
------------(INSTANCE PASSES)
-- Warren single
	elseif name == "Warren Transmission Pass (System Generated)" or name == "Warren Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_warren.iff", true)
		if (selectedID == 20) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "dantooine", -556, 1, -3818, 0)
			playerCreature:sendSystemMessage("You are being transmitted to the Warren")
		end
-- Geo single
	elseif name == "Geo Transmission Pass (System Generated)" or name == "Geo Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_geo.iff", true)
		if (selectedID == 20) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "yavin4", -6494, 83, -418, 0)
			playerCreature:sendSystemMessage("You are being transmitted to Geo Caves")
		end
-- Banshee single
	elseif name == "Banshee Transmission Pass (System Generated)" or name == "Banshee Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_banshee.iff", true)
		if (selectedID == 20) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "naboo", 5496, 11, 1368, 0)
			playerCreature:sendSystemMessage("You are being transmitted to Banshee Caves")
		end
-- DWB single
	elseif name == "DWB Transmission Pass (System Generated)" or name == "DWB Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_dwb.iff", true)
		if (selectedID == 20) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "endor", -4680, 13, 4330, 0)
			playerCreature:sendSystemMessage("You are being transmitted to the DWB")
		end
-- Geo Group
	elseif name == "Geo Group Pass (System Generated)" or name == "Geo Group Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_geo_group.iff", true)
		if (selectedID == 20) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "yavin4", -6494, 83, -418, 0, "The Geo Caves")
			playerCreature:sendSystemMessage("You are being transmitted to the Geo Caves")
		end
-- DWB Group
	elseif name == "DWB Group Pass (System Generated)" or name == "DWB Group Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_dwb_group.iff", true)
		if (selectedID == 20) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "endor", -4680, 13, 4330, 0, "DWB")
			playerCreature:sendSystemMessage("You are being transmitted to the DWB")
		end
-- Golden Group Instance Pass
	elseif name == "Golden Group Instance Pass (System Generated)" or name == "Golden Group Instance Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_gold_pve_group.iff", true)
		if (selectedID == 20) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "endor", -4680, 13, 4330, 0, "DWB")
			playerCreature:sendSystemMessage("You are being transmitted to the DWB")--dwb
		elseif (selectedID == 21) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "dantooine", -556, 1, -3818, 0, "The Warren")
			playerCreature:sendSystemMessage("You are being transmitted to the Warren")--warren
		elseif (selectedID == 22) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "yavin4", -6494, 83, -418, 0, "The Geo Caves")
			playerCreature:sendSystemMessage("You are being transmitted to the Geo Caves")--geo caves
		elseif (selectedID == 23) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "naboo", 5496, 11, 1368, 0, "Lake Rose")
			playerCreature:sendSystemMessage("You are being transmitted to Lake Rose Banshee, place")--lake rose
		end
------------(SPACE PASSES)
-- Nova Orion single
	elseif name == "Nova Orion Transmission Pass (System Generated)" or name == "Nova Orion Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_nova.iff", true)
		if (selectedID == 20) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "space_corellia", -12.2, -1, 5.6, 281475109085800)
			playerCreature:sendSystemMessage("You are being transmitted to Nova Orion Station")
		end
-- ISD single
	elseif name == "ISD Transmission Pass (System Generated)" or name == "ISD Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_isd.iff", true)
		if (selectedID == 20) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "space_tatooine", 9.2, 173.8, 64.9, 281475109153579)
			playerCreature:sendSystemMessage("You are being transmitted to the ISD")
		end
-- Avatar single
	elseif name == "Avatar Transmission Pass (System Generated)" or name == "Avatar Transmission Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_avatar.iff", true)
		if (selectedID == 20) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "space_lok", 104.3, 0, 21.5, 281475247980742)
			playerCreature:sendSystemMessage("You are being transmitted to the Avatar")
		end
-- Golden Space Pass
	elseif name == "Golden Space Pass (System Generated)" or name == "Golden Space Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_gold_space.iff", true)
		if (selectedID == 20) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "space_lok", 104.3, 0, 21.5, 281475247980742)
			playerCreature:sendSystemMessage("You are being transmitted to the Avatar Platform")
		elseif (selectedID == 21) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "space_tatooine", 9.2, 173.8, 64.9, 281475109153579)
			playerCreature:sendSystemMessage("You are being transmitted to the ISD")
		elseif (selectedID == 22) then
			ported = playerSwitchZoneOutOfCombat(pPlayer, pCollector, "space_corellia", -12.2, -1, 5.6, 281475109085800)
			playerCreature:sendSystemMessage("You are being transmitted to Nova Orion space station")
		end
-- ISD Group
	elseif name == "ISD Group Pass (System Generated)" or name == "ISD Group Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_isd_group.iff", true)
		if (selectedID == 20) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "space_tatooine", 9.2, 173.8, 64.9, 281475109153579, "The ISD")
			playerCreature:sendSystemMessage("You are being transmitted to the ISD")
		end
-- Avatar Group
	elseif name == "Avatar Group Pass (System Generated)" or name == "Avatar Group Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_avatar_group.iff", true)
		if (selectedID == 20) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "space_lok", 104.3, 0, 21.5, 281475247980742, "The Avatar")
			playerCreature:sendSystemMessage("You are being transmitted to the Avatar")
		end
-- Golden Group Space Pass
	elseif name == "Golden Group Space Pass (System Generated)" or name == "Golden Group Space Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_gold_space_group.iff", true)
		if (selectedID == 20) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "space_lok", 104.3, 0, 21.5, 281475247980742, "The Avatar")
			playerCreature:sendSystemMessage("You are being transmitted to the Avatar Platform")
		elseif (selectedID == 21) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "space_tatooine", 9.2, 173.8, 64.9, 281475109153579, "The ISD")
			playerCreature:sendSystemMessage("You are being transmitted to the ISD")
		elseif (selectedID == 22) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "space_corellia", -12.2, -1, 5.6, 281475109085800, "Nova Orion")
			playerCreature:sendSystemMessage("You are being transmitted to Nova Orion space station")
		end
-- Golden Group PVP Pass TODO
	elseif name == "Golden Group PVP Pass (System Generated)" or name == "Golden Group PVP Pass" then
		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/mindsoft/bf_teleports/bf_teleport_gold_pvp_group.iff", true)
		if (selectedID == 20) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "space_lok", 104.3, 0, 21.5, 281475247980742, "The Avatar")
			playerCreature:sendSystemMessage("You are being transmitted to the Avatar Platform")
		elseif (selectedID == 21) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "space_tatooine", 9.2, 173.8, 64.9, 281475109153579, "The ISD")
			playerCreature:sendSystemMessage("You are being transmitted to the ISD")
		elseif (selectedID == 22) then
			ported = groupSwitchZoneOutOfCombatRange(pPlayer, range,0,0,0, "space_corellia", -12.2, -1, 5.6, 281475109085800, "Nova Orion")
			playerCreature:sendSystemMessage("You are being transmitted to Nova Orion space station")
		end
	else
	end
	
	if ported and pItem ~= nil then
		SceneObject(pItem):destroyObjectFromWorld()
		SceneObject(pItem):destroyObjectFromDatabase()
	end
	return 0
end

function bf_teleport_menu:travel(pPlayer)
	if pPlayer == nil then
		return false
	end
	local portString = readStringData("bfTeleport:"..tostring(pPlayer))
	local port = splitString(portString,",")
	local player = LuaCreatureObject(pPlayer)
	local pCell = LuaSceneObject(pPlayer):getParentID()
	deleteStringData("bfTeleport:"..tostring(pPlayer))
	if player ~= nil then
		if player:isInCombat() then
			player:sendSystemMessage("You can not activate group port while in combat")
			return false
		elseif player:isIncapacitated() then
			player:sendSystemMessage("You can not group port while incapped")
			return false
		elseif	port[1] == nil then
			player:sendSystemMessage("(Time Expired)\nYou must activate group port within 30 seconds")
			return false
		else
			CreatureObject(pPlayer):doAnimation("jump")
			return playerSwitchZoneOutOfCombat(pPlayer, port[1], port[2], port[3], port[4], port[5])
		end
		return true
	end
	return false
end
function bf_teleport_menu:bookTravel(pPlayer, pSui, eventIndex)
	if eventIndex == 1 or pPlayer == nil then
		return false
	end
	createEvent(15000, "bf_teleport_menu", "travel", pPlayer)
	CreatureObject(pPlayer):sendSystemMessage("you will be teleported in 15 seconds")
	return 0
end

function bf_teleport_menu:travelClose(pPlayer)
	local player = LuaCreatureObject(pPlayer)
	CreatureObject(pPlayer):sendSystemMessage("(Group Port Expired)")
	deleteStringData("bfTeleport:"..tostring(pPlayer))
	return 0
end


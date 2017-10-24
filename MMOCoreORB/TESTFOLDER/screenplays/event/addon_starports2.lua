require('utils.player_switch_zone')
addon_starports2 = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("addon_starports2", true)
local ObjectManager = require("managers.object.object_manager")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function addon_starports2:start()
	if (not isZoneEnabled("corellia")) or (not isZoneEnabled("yavin4")) or (not isZoneEnabled("naboo")) or (not isZoneEnabled("tatooine")) or (not isZoneEnabled("rori")) or (not isZoneEnabled("endor")) or (not isZoneEnabled("talus"))then
		return 0
	end
	
	self:spawnSceneObjects()
	self:spawnMobiles()
end

function addon_starports2:spawnMobiles()
	spawnSceneObject("talus","object/static/vehicle/static_lambda_shuttle.iff", -4484.6, 6.8, -3493.9, 0.972, 0, -0.233, 0, 0)

	--Looking for DWS Group: Healer
	local spawnedPointer = spawnSceneObject("tatooine", "object/tangible/event_perk/banner_generic_s01.iff", -1413.0, 0, -5650.0,0,0,0,1,0)
	ObjectManager.withSceneObject(spawnedPointer, function(scene)
		scene:setCustomObjectName("LFG: Healer")
	end)
end

function addon_starports2:createObserver(pCollector, CustomName, ObserverName)
	local object = SceneObject(pCollector)
	object:setCustomObjectName(CustomName)
	createObserver(OBJECTRADIALUSED, "addon_starports2", ObserverName, pCollector)
	return 0
end

function addon_starports2:spawnSceneObjects()
	local pCollector = spawnSceneObject("talus", "object/tangible/furniture/all/frn_all_command_console.iff", -4474.0, 8.2, -3476.5, 85, 95, 0, 0, 0)
	self:createObserver(pCollector, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	
	
	local pCollector2 = spawnSceneObject("naboo", "object/tangible/furniture/all/frn_all_command_console.iff", 5333.5, 10.6, 1359.8, 0, 0, 0, 0, 0)
	self:createObserver(pCollector2, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	
	
	--Return from DWB
	local pCollector3 = spawnSceneObject("rori", "object/tangible/furniture/all/frn_all_command_console.iff", -5379.6, 75.7, -6013.3, 0, 0, 0, 1, 0)
	self:createObserver(pCollector3, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	
	
	local pCollector6 = spawnSceneObject("dungeon1", "object/tangible/furniture/all/frn_all_command_console.iff", 572.0, 0.5, 1870.7, 0, 1, 0, 0,0)
	self:createObserver(pCollector6, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	

	local pCollector7 = spawnSceneObject("dungeon1", "object/tangible/furniture/all/frn_all_command_console.iff", 572.0, 0.5, 1872.7, 0, 1, 0, 0,0)
	self:createObserver(pCollector7, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	

	local pCollector8 = spawnSceneObject("dungeon1", "object/tangible/furniture/imperial/data_terminal_s1.iff", 600.6, 0.5, 2057.1, 0, 0, 0, 1,0)
	self:createObserver(pCollector8, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	

	local pCollector9 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1415.0, 0.0, -5657.0, 0, 0, 0, 0, 0)
	self:createObserver(pCollector9, "\\#FF0000Travel to Imperial Corvette", "teleportImpCor")	
	
	local pCollector10 = spawnSceneObject("naboo", "object/tangible/furniture/all/frn_all_command_console.iff", -6021.6, 19.5, 3017.5, 0, 0, 0, 1, 0)
	self:createObserver(pCollector10, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	

	local pCollector11 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1415.0, 0.0, -5664.1, 0, 0, 0, 0, 0)
	self:createObserver(pCollector11, "\\#FF0000Travel to Rebellion Corvette", "teleportRebCor2")		

	local pCollector12 = spawnSceneObject("dungeon1", "object/tangible/furniture/all/frn_all_command_console.iff", 570.5, 0.5, 1869.9, 0, 0, 0, 0, 0)
	self:createObserver(pCollector12, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	

	local pCollector13 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1452.3, 0.8, -5668.9, 0, 0, 0, 0, 0)
	self:createObserver(pCollector13, "\\#ee3377Travel to Lake Roses Naboo", "teleportNB")	
	
	local pCollector14 = spawnSceneObject("dungeon1", "object/tangible/furniture/all/frn_all_command_console.iff", 570.9, 0.5, 1873.5, 0, 0, 0, 0, 0)
	self:createObserver(pCollector14, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	

	local pCollector15 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1415.0, 0.0, -5650.0, 0, 0, 0, 0, 0)
	self:createObserver(pCollector15, "\\#FF0000PvP Corvette REBEL ENTRY", "teleportPvpCorReb")	

	local pCollector16 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1415.0, 0.0, -5670.9, 0, 0, 0, 0, 0)
	self:createObserver(pCollector16, "\\#FF0000PvP Corvette IMPERIAL ENTRY", "teleportPvpCorImp")	
end

function addon_starports2:teleportMB(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "corellia", -148.3, 28, -4721.5, 85)
	return 0
end

function addon_starports2:teleportNB(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "naboo", 5332.9, 10.9, 1367.9, 0)
	return 0
end

function addon_starports2:teleportAM(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "rori", -5384.5, 75.7, -6013.3, 0)
	return 0
end

function addon_starports2:teleportSCE(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "dungeon1", -0.1, 0.0, 145.6, 4336262)
	return 0
end

function addon_starports2:teleportRR(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "rori", 5364.9, 80, 5664.1, -178)
	return 0
end

function addon_starports2:teleportTS(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "naboo", -5042.8, -196.4, 6077.6, 40)
	return 0
end

function addon_starports2:teleportLK(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "naboo", -6021.6, 19.5, 3021.5, 40)
	return 0
end

function addon_starports2:teleportED(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "endor", -961.9, 73.0, 1546.8, -16)
	return 0
end

function addon_starports2:teleportDT(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "talus", -3435.0, 55.3, 3375.0, 38)
	return 0
end

function addon_starports2:teleportecho(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "talus", -4478.4, 7.6, -3473.4, -61)
	return 0
end

function addon_starports2:teleportYV(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "dantooine", -7149.8, 0.1, -6074.8, -127)
	return 0
end

function addon_starports2:teleportCor(pCollector, pPlayer)--current
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "dungeon1", -20, 0, 0, 4336197)
	return 0
end

function addon_starports2:teleportImpCor(pCollector, pPlayer)--rebel
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isRebel() == true) then
		local player = LuaSceneObject(pPlayer)
		playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "dungeon1", -40, 0, 0, 4336599)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end	
	return 0
end

function addon_starports2:teleportPvpCorImp(pCollector, pPlayer)--Imp Bridge
	local playerfaction = LuaCreatureObject(pPlayer)

	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "dungeon1", 18.6, 0, 123.6, 4336594)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end	
	return 0
end

function addon_starports2:teleportPvpCorReb(pCollector, pPlayer)--Rebel Load in
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isRebel() == true) then
		local player = LuaSceneObject(pPlayer)
		playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "dungeon1", 0.2, -6.7, -51.8, 4336555)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end	
	return 0
end

function addon_starports2:teleportRebCor(pCollector, pPlayer)--rebel
	local player = LuaSceneObject(pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10, "dungeon1", -40, 0, 0, 4336331)
	return 0
end

function addon_starports2:teleportRebCor2(pCollector, pPlayer)--rebel
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "dungeon1", -40, 0, 0, 4336264)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end	
	return 0
end



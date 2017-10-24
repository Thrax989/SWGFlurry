require('utils.player_switch_zone')

bloodfin_cantinaScreenPlay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "bloodfin_cantinaScreenPlay",
}

registerScreenPlay("bloodfin_cantinaScreenPlay", true)
local ObjectManager = require("managers.object.object_manager")

function bloodfin_cantinaScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
--		self:spawnStructures()
	end
end

function bloodfin_cantinaScreenPlay:createObserver(pCollector, CustomName, ObserverName)
	local object = SceneObject(pCollector)
	object:setCustomObjectName(CustomName)
	createObserver(OBJECTRADIALUSED, "bloodfin_cantinaScreenPlay", ObserverName, pCollector)
	return 0
end

function bloodfin_cantinaScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("tatooine", "port", 120, 3477.2, 5.0, -4846.1, 96, 0)
	self:createObserver(pCollector1, "\\#FF0000Travel to the Iconic Dungeon", "teleportIconic")	

	local pCollector2 = spawnMobile("tatooine", "telport", 120, 3480.1, 5.0, -4841.8, 157, 0)
	self:createObserver(pCollector2, "\\#FF0000Travel to DWS", "teleportDWS")	

	
--Cantina

--	spawnMobile("tatooine", "ig_88", 1, 12.4, 1.0, -13.6, -32, 0)
--	spawnMobile("tatooine", "bossk", 1, 13.0, 1.0, -12.2, 118, 281474997631913)
--	spawnMobile("tatooine", "bounty_hunter_thug", 30, 12.8, 1.0, -10.1, 87, 281474997631913)
--	spawnMobile("tatooine", "entertainer",1, 3.9, 0.5, -16.4, 0, 281474997631913)
--	spawnMobile("tatooine", "entertainer",1, -5.6, 0.5, -15.6, 0, 281474997631913)
--	spawnMobile("tatooine", "max_rebo",1, -0.9, 0.5, -15.7, 0, 281474997631913)
--	spawnMobile("tatooine", "droopy_mccool",1, 0.4, 0.5, -13.1, 0, 281474997631913)
--	spawnMobile("tatooine", "sy_snootles", 1, -0.8, 0.5, -11.6, 0, 281474997631913)
--	spawnMobile("tatooine", "roughneck",	5, -11.5, 1.0, -1.7, -176, 281474997631913)
--	spawnMobile("tatooine", "assassin", 	5, -11.6, 1.0, -3.6, -25, 281474997631913)
--	spawnMobile("tatooine", "bartender", 	1, -2.1, 0.8, 5.1, -161, 281474997631913)
--	spawnMobile("tatooine", "bartender", 	1, 1.5, 0.8, 4.7, 139, 281474997631913)
--	spawnMobile("tatooine", "jabba_the_hutt",1, -12.4, 1.0, -12.0, 85, 281474997631913)
--	spawnMobile("tatooine", "jabba_enforcer",1, -10.4, 0.8, -14.0, 56, 281474997631913)
--	spawnMobile("tatooine", "jabba_enforcer",1, -10.5, 0.8, -9.8, 19, 281474997631913)
--	spawnMobile("tatooine", "gamorrean_guard",1, -9.6, 0.8, -17, 0, 281474997631913)
--	spawnMobile("tatooine", "twilek_slave", 1,-12.5, 1, -9.9, 72, 281474997631913)
--	spawnMobile("tatooine", "salacious_crumb",1,-10.8, 0.9, -10.8, 64, 281474997631913)
--	spawnMobile("tatooine", "weequay_zealot", 1,-3.0, 0.7, 3.3, 17, 281474997631913)
--	spawnMobile("tatooine", "gunrunner",  1, -0.5, 0.7, 2.4, -5, 281474997631913)
--	spawnMobile("tatooine", "rodian_gladiator",  1, 2.4, 0.7, 3.1, -51, 281474997631913)
--	spawnMobile("tatooine", "commoner_fat", 1, 4.0, -0.2, -12.6, 173, 281474997631913)

		


end

function bloodfin_cantinaScreenPlay:teleportIconic(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "naboo", -6488.1, 39.8, -3240.7, -161)
	return 0
end

function bloodfin_cantinaScreenPlay:teleportDWS(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "rori", 4835.1, 76.3, -1090.9, 57)
	return 0
end

--[[function bloodfin_cantinaScreenPlay:spawnStructures()
--no build zone
	spawnSceneObject("tatooine", "object/static/structure/general/fs_village_nobuild_768m.iff", -1481.0, 0.0, -5724.0, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine", "object/static/structure/general/fs_village_nobuild_768m.iff", -1481.0, 0.0, -5914.0, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine", "object/static/structure/general/fs_village_nobuild_768m.iff", -1481.0, 0.0, -5333.0, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine", "object/static/structure/general/fs_village_nobuild_768m.iff", -1671.0, 0.0, -5728.0, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine", "object/static/structure/general/fs_village_nobuild_768m.iff", -1289.0, 0.0, -5728.0, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine", "object/static/structure/general/fs_village_nobuild_768m.iff", -1346.0, 0.0, -5588.0, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine", "object/static/structure/general/fs_village_nobuild_768m.iff", -1614.0, 0.0, -5859.0, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine", "object/static/structure/general/fs_village_nobuild_768m.iff", -1610.0, 0.0, -5584.0, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine", "object/static/structure/general/fs_village_nobuild_768m.iff", -1354.0, 0.0, -5866.0, 0, 0, 0, 0, 0)
end--]]

require('utils.player_switch_zone')

isd_pvpScreenPlay = ScreenPlay:new {
        numberOfActs = 1,

}

registerScreenPlay("isd_pvpScreenPlay", true)
local ObjectManager = require("managers.object.object_manager")

function isd_pvpScreenPlay:start()
	if (not isZoneEnabled("corellia")) or (not isZoneEnabled("space_corellia")) or (not isZoneEnabled("naboo"))then
		return 0
	end
	
	self:spawnSceneObjects()

end
function isd_pvpScreenPlay:createObserver(pCollector, CustomName, ObserverName)
	local object = SceneObject(pCollector)
	object:setCustomObjectName(CustomName)
	createObserver(OBJECTRADIALUSED, "isd_pvpScreenPlay", ObserverName, pCollector)
	return 0
end

function isd_pvpScreenPlay:spawnSceneObjects()

	-- Travel terminal Theed
	local pCollector = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -4861.4, 6.0, 4120.8, 0, 0, 0, 1, 0)
	self:createObserver(pCollector, "\\#ee3377Travel to the Star Destroyer (Corellian Space)", "teleportIsdImp")	

	-- Travel terminal Moenia
	local pCollector2 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4831.8, 4.2, -4665.1, 0, 0, 0, 1, 0)
	self:createObserver(pCollector2, "\\#ee3377Travel to the Star Destroyer (Corellian Space)", "teleportIsdReb")	
	
	--Return from ISD
	local pCollector3 = spawnSceneObject("space_corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -0.2, 172.3, 273.6, 0, 0, 0, 1, 281475443349435)
	self:createObserver(pCollector3, "\\#ee3377Travel to Coronet Corellia", "teleportCnet")	
	

end

function isd_pvpScreenPlay:teleportCnet(pCollector, pPlayer)
	playerSwitchZoneOutOfCombat(pPlayer, "corellia", -201.8, 28.0, -4467.2, 0)
	return 0
end

	
function isd_pvpScreenPlay:teleportIsdImp(pCollector, pPlayer)--imperial isd load in
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		playerSwitchZoneOutOfCombat(pPlayer, "space_corellia", -1.0, 453.6, 323.9, 281475443349487)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end	
	return 0
end

function isd_pvpScreenPlay:teleportIsdReb(pCollector, pPlayer)--rebel isd load in
	local playerfaction = LuaCreatureObject(pPlayer)

	if (playerfaction:isRebel() == true) then
		local player = LuaSceneObject(pPlayer)
		playerSwitchZoneOutOfCombat(pPlayer, "space_corellia", -0.0, 177.3, -53.3, 281475443349465)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
	return 0
end




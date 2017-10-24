require('utils.player_switch_zone')
axkva_objects = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("axkva_objects", true)

spHelper = require("screenplayHelper")

local ObjectManager = require("managers.object.object_manager")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function axkva_objects:start()
	if (not isZoneEnabled("dathomir")) then
		return 0
	end
	
--	self:spawnSceneObjects()
	self:spawnMobiles()
end

function axkva_objects:spawnMobiles()

	local pCollector1 = spawnMobile("dathomir", "eg6_port", 60, -90.5, -100.9, -99.5,170, 4115629)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Enter the Prison")
	createObserver(OBJECTRADIALUSED, "axkva_objects", "teleportAxkva", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end

	local pCollector2 = spawnMobile("dathomir", "eg6_port", 60, 27.7, 0.1, -0.5, 0, 281475714342453)
	local collector2 = LuaCreatureObject(pCollector2)
	collector2:setOptionsBitmask(264)
	collector2:setCustomObjectName("\\#FF0000Exit the Prison")
	createObserver(OBJECTRADIALUSED, "axkva_objects", "teleportNSCAVE", pCollector2)
	if (pCollecter2~= nil) then 
		return
	end

end

function axkva_objects:teleportAxkva(pCollector, pPlayer)
		playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "dathomir", 33.6, 0.1, 0.3, 281475714342453)
	return 0
end

function axkva_objects:teleportNSCAVE(pCollector2, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector2, 10 ,"dathomir", -3959.0, 124.0, -55.0, 0)
	return 0
end


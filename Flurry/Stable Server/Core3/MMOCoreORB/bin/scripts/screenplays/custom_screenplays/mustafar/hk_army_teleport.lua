hkArmyTeleportScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("hkArmyTeleportScreenPlay", true)

function hkArmyTeleportScreenPlay:start()
	if (isZoneEnabled("mustafar")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function hkArmyTeleportScreenPlay:spawnSceneObjects()

end

function hkArmyTeleportScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("mustafar", "teleporter", 120, -2528.2, 225, 1662.1, -176, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to HK-47 Army")
	createObserver(OBJECTRADIALUSED, "hkArmyTeleportScreenPlay", "teleportHkArmy", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function hkArmyTeleportScreenPlay:teleportHkArmy(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("mustafar", 3688, 74, 743, 0)
	return 0
end

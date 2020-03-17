sherkarTeleportScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("sherkarTeleportScreenPlay", true)

function sherkarTeleportScreenPlay:start()
	if (isZoneEnabled("mustafar")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function sherkarTeleportScreenPlay:spawnSceneObjects()

end

function sherkarTeleportScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("mustafar", "teleporter", 120, -2528.2, 225, 1645.8, 7, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to Sher Kar's Lair")
	createObserver(OBJECTRADIALUSED, "sherkarTeleportScreenPlay", "teleportSherKar", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function sherkarTeleportScreenPlay:teleportSherKar(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", -6.7, -0.8, 3.6, 14201161)
	return 0
end

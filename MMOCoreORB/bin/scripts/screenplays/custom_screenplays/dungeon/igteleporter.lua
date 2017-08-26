igteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("igteleporterScreenPlay", true)

function igteleporterScreenPlay:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function igteleporterScreenPlay:spawnSceneObjects()

end

function igteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("lok", "teleporter", 120, 491.2, 12, 4832.2, 5, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to IG-88 Encounter")
	createObserver(OBJECTRADIALUSED, "igteleporterScreenPlay", "teleportig", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function igteleporterScreenPlay:teleportig(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 0.1, 0.0, 42.2, 14200863)
	return 0
end

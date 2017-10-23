kashyyyktwolevelgroundteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyyktwolevelgroundteleporterScreenPlay", true)

function kashyyyktwolevelgroundteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyyktwolevelgroundteleporterScreenPlay:spawnSceneObjects()

end

function kashyyyktwolevelgroundteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kashyyyk", "wookteleporter", 120, -459.1, 179.5, -86, -114, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Ground Level")
	createObserver(OBJECTRADIALUSED, "kashyyyktwolevelgroundteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyyktwolevelgroundteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -475, 29.8, -14.8, 0)
	return 0
end
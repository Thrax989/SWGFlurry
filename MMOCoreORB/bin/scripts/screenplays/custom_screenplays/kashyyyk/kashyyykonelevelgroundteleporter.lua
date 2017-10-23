kashyyykonelevelgroundteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyykonelevelgroundteleporterScreenPlay", true)

function kashyyykonelevelgroundteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyykonelevelgroundteleporterScreenPlay:spawnSceneObjects()

end

function kashyyykonelevelgroundteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kashyyyk", "wookteleporter", 120, -459.9, 157.2, -78, -41, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Ground Level")
	createObserver(OBJECTRADIALUSED, "kashyyykonelevelgroundteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyykonelevelgroundteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -475, 29.8, -14.8, 0)
	return 0
end
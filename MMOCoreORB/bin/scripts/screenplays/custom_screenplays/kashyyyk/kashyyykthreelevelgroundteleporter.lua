kashyyykthreelevelgroundteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyykthreelevelgroundteleporterScreenPlay", true)

function kashyyykthreelevelgroundteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyykthreelevelgroundteleporterScreenPlay:spawnSceneObjects()

end

function kashyyykthreelevelgroundteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kashyyyk", "wookteleporter", 120, -451.6, 210.9, -91.3, -73, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Ground Level")
	createObserver(OBJECTRADIALUSED, "kashyyykthreelevelgroundteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyykthreelevelgroundteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -475, 29.8, -14.8, 0)
	return 0
end
avatarteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("avatarteleporterScreenPlay", true)

function avatarteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function avatarteleporterScreenPlay:spawnSceneObjects()

end

function avatarteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kashyyyk", "teleporter", 120, 544.5, 31, 489.7, -175, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to the Avatar Station")
	createObserver(OBJECTRADIALUSED, "avatarteleporterScreenPlay", "teleportavatar", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function avatarteleporterScreenPlay:teleportavatar(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 6193, 250, -5978, 0)
	return 0
end

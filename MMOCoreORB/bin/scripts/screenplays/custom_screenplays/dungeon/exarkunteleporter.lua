exarkunteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("exarkunteleporterScreenPlay", true)

function exarkunteleporterScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function exarkunteleporterScreenPlay:spawnSceneObjects()

end

function exarkunteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("yavin4", "teleporter", 120, -6.1, -6.4, -5.0, 178, 3465393)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Enter the Tomb of Exar Kun")
	createObserver(OBJECTRADIALUSED, "exarkunteleporterScreenPlay", "teleportExarkun", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function exarkunteleporterScreenPlay:teleportExarkun(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", -11.5, 0.2, -121.8, 14200872)
	return 0
end

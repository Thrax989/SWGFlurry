echobaseteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("echobaseteleporterScreenPlay", true)

function echobaseteleporterScreenPlay:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function echobaseteleporterScreenPlay:spawnSceneObjects()

end

function echobaseteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("hoth", "teleporter", 120, -4, 0, -1991.8, 126, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Transport to Echo Base")
	createObserver(OBJECTRADIALUSED, "echobaseteleporterScreenPlay", "teleportechobase", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function echobaseteleporterScreenPlay:teleportechobase(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 89.1, -14.7, 300.1, 14201134)
	return 0
end

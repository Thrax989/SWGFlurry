myyydrilteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("myyydrilteleporterScreenPlay", true)

function myyydrilteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function myyydrilteleporterScreenPlay:spawnSceneObjects()

end

function myyydrilteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kashyyyk", "teleporter", 120, -167.2, -65.9, 38.4, 34, 281474997391133)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Return to Cavern Entrance")
	createObserver(OBJECTRADIALUSED, "myyydrilteleporterScreenPlay", "teleportmyyydril", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function myyydrilteleporterScreenPlay:teleportmyyydril(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -3.8, -1.1, -4.2, 281474997391073)
	return 0
end
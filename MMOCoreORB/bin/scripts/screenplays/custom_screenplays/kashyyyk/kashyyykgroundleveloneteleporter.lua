kashyyykgroundleveloneteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyykgroundleveloneteleporterScreenPlay", true)

function kashyyykgroundleveloneteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyykgroundleveloneteleporterScreenPlay:spawnSceneObjects()

end

function kashyyykgroundleveloneteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kashyyyk", "wookteleporter", 120, -478.2, 29.9, -12.9, 139, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Level 1")
	createObserver(OBJECTRADIALUSED, "kashyyykgroundleveloneteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyykgroundleveloneteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -463, 157.2, -75.7, 0)
	return 0
end
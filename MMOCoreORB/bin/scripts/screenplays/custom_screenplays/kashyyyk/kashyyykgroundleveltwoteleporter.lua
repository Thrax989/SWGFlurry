kashyyykgroundleveltwoteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyykgroundleveltwoteleporterScreenPlay", true)

function kashyyykgroundleveltwoteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyykgroundleveltwoteleporterScreenPlay:spawnSceneObjects()

end

function kashyyykgroundleveltwoteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kashyyyk", "wookteleporter", 120, -473, 29.9, -10, 158, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Level 2")
	createObserver(OBJECTRADIALUSED, "kashyyykgroundleveltwoteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyykgroundleveltwoteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -462.2, 179.5, -88, 0)
	return 0
end
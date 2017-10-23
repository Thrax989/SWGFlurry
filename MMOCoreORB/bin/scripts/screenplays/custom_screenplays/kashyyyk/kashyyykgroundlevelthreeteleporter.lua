kashyyykgroundlevelthreeteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyykgroundlevelthreeteleporterScreenPlay", true)

function kashyyykgroundlevelthreeteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyykgroundlevelthreeteleporterScreenPlay:spawnSceneObjects()

end

function kashyyykgroundlevelthreeteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kashyyyk", "wookteleporter", 120, -471, 29.9, -15.8, -89, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Level 3")
	createObserver(OBJECTRADIALUSED, "kashyyykgroundlevelthreeteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyykgroundlevelthreeteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -454, 210.8, -91.8, 0)
	return 0
end
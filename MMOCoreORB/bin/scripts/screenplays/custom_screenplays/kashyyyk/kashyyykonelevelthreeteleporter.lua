kashyyykonelevelthreeteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyykonelevelthreeteleporterScreenPlay", true)

function kashyyykonelevelthreeteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyykonelevelthreeteleporterScreenPlay:spawnSceneObjects()

end

function kashyyykonelevelthreeteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kashyyyk", "wookteleporter", 120, -466.4, 157.2, -76.8, 63, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Level 3")
	createObserver(OBJECTRADIALUSED, "kashyyykonelevelthreeteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyykonelevelthreeteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -454, 210.8, -91.8, 0)
	return 0
end
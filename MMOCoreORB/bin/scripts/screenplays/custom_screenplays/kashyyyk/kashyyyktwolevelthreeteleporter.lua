kashyyyktwolevelthreeteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyyktwolevelthreeteleporterScreenPlay", true)

function kashyyyktwolevelthreeteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyyktwolevelthreeteleporterScreenPlay:spawnSceneObjects()

end

function kashyyyktwolevelthreeteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kashyyyk", "wookteleporter", 120, -462, 179.5, -91.9, -12, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Level 3")
	createObserver(OBJECTRADIALUSED, "kashyyyktwolevelthreeteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyyktwolevelthreeteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -454, 210.8, -91.8, 0)
	return 0
end
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

local pCollector1 = spawnSceneObject("kashyyyk","object/building/kashyyyk/mun_kash_tree_door_level3_main.iff",-470.35,29.88,-15.88,0,-0.71386,0,0.70028,0)
	local collector1 = LuaSceneObject(pCollector1)
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

function kashyyykgroundlevelthreeteleporterScreenPlay:spawnMobiles()

end

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

local pCollector1 = spawnSceneObject("kashyyyk","object/building/kashyyyk/mun_kash_tree_door_level1_main.iff",-478.73,29.86,-12.33,0,0.34775,0,0.93759,0)
	local collector1 = LuaSceneObject(pCollector1)
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

function kashyyykgroundleveloneteleporterScreenPlay:spawnMobiles()
	
end

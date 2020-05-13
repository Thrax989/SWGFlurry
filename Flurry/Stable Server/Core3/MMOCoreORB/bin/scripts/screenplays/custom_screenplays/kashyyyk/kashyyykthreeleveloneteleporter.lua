kashyyykthreeleveloneteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyykthreeleveloneteleporterScreenPlay", true)

function kashyyykthreeleveloneteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyykthreeleveloneteleporterScreenPlay:spawnSceneObjects()

end

function kashyyykthreeleveloneteleporterScreenPlay:spawnMobiles()

local pCollector1 = spawnSceneObject("kashyyyk","object/building/kashyyyk/mun_kash_tree_door_level1.iff",-450.90,210.86,-91.51,0,0.80210,0,-0.59720,0)
	local collector1 = LuaSceneObject(pCollector1)
	collector1:setCustomObjectName("\\#FF0000Level 1")
	createObserver(OBJECTRADIALUSED, "kashyyykthreeleveloneteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyykthreeleveloneteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -463, 157.2, -75.7, 0)
	return 0
end

kashyyyktwolevelgroundteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyyktwolevelgroundteleporterScreenPlay", true)

function kashyyyktwolevelgroundteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyyktwolevelgroundteleporterScreenPlay:spawnSceneObjects()

end

function kashyyyktwolevelgroundteleporterScreenPlay:spawnMobiles()

local pCollector1 = spawnSceneObject("kashyyyk","object/building/kashyyyk/mun_kash_tree_door_level_ground.iff",-458.54,179.46,-89.83,0,0.84459,0,-0.53542,0)
	local collector1 = LuaSceneObject(pCollector1)
	collector1:setCustomObjectName("\\#FF0000Ground Level")
	createObserver(OBJECTRADIALUSED, "kashyyyktwolevelgroundteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyyktwolevelgroundteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -475, 29.8, -14.8, 0)
	return 0
end

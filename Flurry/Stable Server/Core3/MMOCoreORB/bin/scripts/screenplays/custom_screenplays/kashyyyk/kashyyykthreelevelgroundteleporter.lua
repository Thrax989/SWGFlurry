kashyyykthreelevelgroundteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyykthreelevelgroundteleporterScreenPlay", true)

function kashyyykthreelevelgroundteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyykthreelevelgroundteleporterScreenPlay:spawnSceneObjects()

end

function kashyyykthreelevelgroundteleporterScreenPlay:spawnMobiles()

local pCollector1 = spawnSceneObject("kashyyyk","object/building/kashyyyk/mun_kash_tree_door_level_ground.iff",-453.85,210.88,-94.50,0,0.98642,0,-0.16425,0)
	local collector1 = LuaSceneObject(pCollector1)
	collector1:setCustomObjectName("\\#FF0000Ground Level")
	createObserver(OBJECTRADIALUSED, "kashyyykthreelevelgroundteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyykthreelevelgroundteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -475, 29.8, -14.8, 0)
	return 0
end

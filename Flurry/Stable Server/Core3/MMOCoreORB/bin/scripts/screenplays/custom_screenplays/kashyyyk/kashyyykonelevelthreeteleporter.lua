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

local pCollector1 = spawnSceneObject("kashyyyk","object/building/kashyyyk/mun_kash_tree_door_level3.iff",-466.99,157.16,-77.12,0,0.86532,0,0.50121,0)
	local collector1 = LuaSceneObject(pCollector1)
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

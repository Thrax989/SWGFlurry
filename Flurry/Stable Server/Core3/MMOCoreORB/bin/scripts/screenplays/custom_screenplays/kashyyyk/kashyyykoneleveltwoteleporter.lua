kashyyykoneleveltwoteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyykoneleveltwoteleporterScreenPlay", true)

function kashyyykoneleveltwoteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyykoneleveltwoteleporterScreenPlay:spawnSceneObjects()

end

function kashyyykoneleveltwoteleporterScreenPlay:spawnMobiles()

local pCollector1 = spawnSceneObject("kashyyyk","object/building/kashyyyk/mun_kash_tree_door_level2.iff",-459.48,157.16,-78.55,0,0.93051,0,-0.36627,0)
	local collector1 = LuaSceneObject(pCollector1)
	collector1:setCustomObjectName("\\#FF0000Level 2")
	createObserver(OBJECTRADIALUSED, "kashyyykoneleveltwoteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyykoneleveltwoteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -462.2, 179.5, -88, 0)
	return 0
end

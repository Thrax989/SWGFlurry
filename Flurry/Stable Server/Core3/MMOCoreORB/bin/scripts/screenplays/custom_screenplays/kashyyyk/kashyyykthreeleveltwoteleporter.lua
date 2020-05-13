kashyyykthreeleveltwoteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyykthreeleveltwoteleporterScreenPlay", true)

function kashyyykthreeleveltwoteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function kashyyykthreeleveltwoteleporterScreenPlay:spawnSceneObjects()

end

function kashyyykthreeleveltwoteleporterScreenPlay:spawnMobiles()

local pCollector1 = spawnSceneObject("kashyyyk","object/building/kashyyyk/mun_kash_tree_door_level2.iff",-458.11,210.86,-93.96,0,-0.95534,0,-0.29552,0)
	local collector1 = LuaSceneObject(pCollector1)
	collector1:setCustomObjectName("\\#FF0000Level 2")
	createObserver(OBJECTRADIALUSED, "kashyyykthreeleveltwoteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyykthreeleveltwoteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -462.2, 179.5, -88, 0)
	return 0
end

kashyyykgroundleveltwoteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kashyyykgroundleveltwoteleporterScreenPlay", true)

function kashyyykgroundleveltwoteleporterScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

function kashyyykgroundleveltwoteleporterScreenPlay:spawnSceneObjects()

local pCollector1 = spawnSceneObject("kashyyyk","object/building/kashyyyk/mun_kash_tree_door_level2_main.iff",-472.64,29.84,-9.26,0,-0.20924,0,0.97786,0)
	local collector1 = LuaSceneObject(pCollector1)
	collector1:setCustomObjectName("\\#FF0000Level 2")
	createObserver(OBJECTRADIALUSED, "kashyyykgroundleveltwoteleporterScreenPlay", "teleportKashyyyk", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function kashyyykgroundleveltwoteleporterScreenPlay:teleportKashyyyk(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -462.2, 179.5, -88, 0)
	return 0
end

function kashyyykgroundleveltwoteleporterScreenPlay:spawnMobiles()

end

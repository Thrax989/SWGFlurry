mustafarReturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("mustafarReturnScreenPlay", true)

function mustafarReturnScreenPlay:start()
	if (isZoneEnabled("mustafar")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function mustafarReturnScreenPlay:spawnSceneObjects()

end

function mustafarReturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("mustafar", "teleporter", 120, -2480.6, 230.1, 1635.7, 149, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to Nova Orion Station")
	createObserver(OBJECTRADIALUSED, "mustafarReturnScreenPlay", "returnMustafar", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function mustafarReturnScreenPlay:returnMustafar(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 77.3, 0.8, 42.2, 14200885)
	return 0
end

novaorionTravelScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("novaorionTravelScreenPlay", true)

function novaorionTravelScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function novaorionTravelScreenPlay:spawnSceneObjects()

end

function novaorionTravelScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("tatooine", "teleporter", 120, -38.8, 1.6, 47.5, -45, 1106378)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to Nova Orion Station")
	createObserver(OBJECTRADIALUSED, "novaorionTravelScreenPlay", "teleportNova", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function novaorionTravelScreenPlay:teleportNova(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 59.7, 0.8, -43.1, 14200887)
	return 0
end


novaorionTravel2ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("novaorionTravel2ScreenPlay", true)

function novaorionTravel2ScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function novaorionTravel2ScreenPlay:spawnSceneObjects()

end

function novaorionTravel2ScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("corellia", "teleporter", 120, -38.8, 1.6, 47.5, -45, 1855681)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to Nova Orion Station")
	createObserver(OBJECTRADIALUSED, "novaorionTravel2ScreenPlay", "teleportNova", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function novaorionTravel2ScreenPlay:teleportNova(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 59.7, 0.8, -43.1, 14200887)
	return 0
end


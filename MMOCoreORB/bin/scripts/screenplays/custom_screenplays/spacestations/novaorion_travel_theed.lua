novaorionTravel3ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("novaorionTravel3ScreenPlay", true)

function novaorionTravel3ScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function novaorionTravel3ScreenPlay:spawnSceneObjects()

end

function novaorionTravel3ScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("naboo", "teleporter", 120, 31.2, 7.9, -8, -90, 1692104)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to Nova Orion Station")
	createObserver(OBJECTRADIALUSED, "novaorionTravel3ScreenPlay", "teleportNova", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function novaorionTravel3ScreenPlay:teleportNova(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 59.7, 0.8, -43.1, 14200887)
	return 0
end


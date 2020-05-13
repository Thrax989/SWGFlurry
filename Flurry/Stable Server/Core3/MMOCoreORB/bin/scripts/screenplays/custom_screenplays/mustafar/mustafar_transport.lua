mustafarTransportScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("mustafarTransportScreenPlay", true)

function mustafarTransportScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function mustafarTransportScreenPlay:spawnSceneObjects()

end

function mustafarTransportScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("dungeon2", "teleporter", 120, 78.8, 0.9, 46.3, -105, 14200885)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to Mustafar")
	createObserver(OBJECTRADIALUSED, "mustafarTransportScreenPlay", "teleportMustafar", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function mustafarTransportScreenPlay:teleportMustafar(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("mustafar", -2475, 230.1, 1624.7, 0)
	return 0
end

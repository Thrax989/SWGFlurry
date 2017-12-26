igreturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("igreturnScreenPlay", true)

function igreturnScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function igreturnScreenPlay:spawnSceneObjects()

end

function igreturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("dungeon2", "teleporter", 120, 12, 0.0, 39.9, -146, 14200863)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Exit Dungeon")
	createObserver(OBJECTRADIALUSED, "igreturnScreenPlay", "returnig", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function igreturnScreenPlay:returnig(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 59.7, 0.8, -43.1, 14200887)
	return 0
end

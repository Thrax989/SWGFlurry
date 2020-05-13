avatarreturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("avatarreturnScreenPlay", true)

function avatarreturnScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function avatarreturnScreenPlay:spawnSceneObjects()

end

function avatarreturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("dungeon2", "teleporter", 120, 6181, 250, -6002, 45, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Exit Dungeon")
	createObserver(OBJECTRADIALUSED, "avatarreturnScreenPlay", "returnavatar", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function avatarreturnScreenPlay:returnavatar(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 59.7, 0.8, -43.1, 14200887)
	return 0
end

avatarreturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("avatarreturnScreenPlay", true)

function avatarreturnScreenPlay:start()
	if (isZoneEnabled("kashyyyk_pob_dungeons")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function avatarreturnScreenPlay:spawnSceneObjects()

end

function avatarreturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kashyyyk_pob_dungeons", "teleporter", 120, 181, 250, 2, 45, 0)
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
	player:switchZone("kashyyyk", 544.5, 31, 489.7, 0)
	return 0
end
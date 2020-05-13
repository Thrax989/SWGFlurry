nightsisterreturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("nightsisterreturnScreenPlay", true)

function nightsisterreturnScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function nightsisterreturnScreenPlay:spawnSceneObjects()

end

function nightsisterreturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("dungeon2", "teleporter", 120, 23.7, 0.1, 0.2, -90, 14201104)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Exit Dungeon")
	createObserver(OBJECTRADIALUSED, "nightsisterreturnScreenPlay", "returnNightsister", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function nightsisterreturnScreenPlay:returnNightsister(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 59.7, 0.8, -43.1, 14200887)
	return 0
end

isdreturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("isdreturnScreenPlay", true)

function isdreturnScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function isdreturnScreenPlay:spawnSceneObjects()

end

function isdreturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("dungeon2", "teleporter", 120, 13.9, 173.8, 14.6, -10, 14201198)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Return to Hoth")
	createObserver(OBJECTRADIALUSED, "isdreturnScreenPlay", "returnisd", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function isdreturnScreenPlay:returnisd(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 59.7, 0.8, -43.1, 14200887)
	return 0
end

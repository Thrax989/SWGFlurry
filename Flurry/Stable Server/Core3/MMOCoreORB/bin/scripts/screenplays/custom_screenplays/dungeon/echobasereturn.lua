echobasereturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("echobasereturnScreenPlay", true)

function echobasereturnScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function echobasereturnScreenPlay:spawnSceneObjects()

end

function echobasereturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("dungeon2", "teleporter", 120, 76.7, -14.7, 277.8, 62, 14201134)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Exit Dungeon")
	createObserver(OBJECTRADIALUSED, "echobasereturnScreenPlay", "returnechobase", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function echobasereturnScreenPlay:returnechobase(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 59.7, 0.8, -43.1, 14200887)
	return 0
end

echobasereturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("echobasereturnScreenPlay", true)

function echobasereturnScreenPlay:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function echobasereturnScreenPlay:spawnSceneObjects()

end

function echobasereturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("hoth", "teleporter", 120, -265.8, 76.7, 463.2, 49, 6452938)
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
	player:switchZone("hoth", 0, 0, -2000, 0)
	return 0
end
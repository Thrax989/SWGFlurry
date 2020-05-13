myyydrilreturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("myyydrilreturnScreenPlay", true)

function myyydrilreturnScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function myyydrilreturnScreenPlay:spawnSceneObjects()

end

function myyydrilreturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kashyyyk", "teleporter", 120, -100.1, -57.8, 31, -113, 6296409)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Return to Cave Entrance")
	createObserver(OBJECTRADIALUSED, "myyydrilreturnScreenPlay", "returnmyyydril", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function myyydrilreturnScreenPlay:returnmyyydril(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kashyyyk", -1742, 51.4, 1824.5, 0)
	return 0
end

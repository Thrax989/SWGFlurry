teleport_hothScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_hothScreenPlay", true)

function teleport_hothScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_hothScreenPlay:spawnSceneObjects()

end

function teleport_hothScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("corellia", "hothport", 1, -157.62, 28, -4704.32, 90, 0 )

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To Hoth Zone")
	createObserver(OBJECTRADIALUSED, "teleport_hothScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_hothScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("hoth", 4, 0, -2008, 0)
	return 0
end

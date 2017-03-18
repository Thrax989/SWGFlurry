teleport_mustafarScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_mustafarScreenPlay", true)

function teleport_mustafarScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_mustafarScreenPlay:spawnSceneObjects()

end

function teleport_mustafarScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("corellia", "mustafarport", 1, -157.668, 28, -4687.98, 87, 0 )

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To Mustafar Zone")
	createObserver(OBJECTRADIALUSED, "teleport_mustafarScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_mustafarScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("mustafar", 0, 0, 0, 0)
	return 0
end

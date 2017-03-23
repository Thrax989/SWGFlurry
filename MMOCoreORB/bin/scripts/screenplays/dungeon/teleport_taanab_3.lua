teleport_taanab_3ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_taanab_3ScreenPlay", true)

function teleport_taanab_3ScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_taanab_3ScreenPlay:spawnSceneObjects()

end

function teleport_taanab_3ScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("taanab", "taanabport4", 1, 2104.1, 45, 5396.27, 259, 0)

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To Corellia")
	createObserver(OBJECTRADIALUSED, "teleport_taanab_3ScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_taanab_3ScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("corellia", -173, 28, -4721, 0)
	return 0
end

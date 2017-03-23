teleport_taanab_5ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_taanab_5ScreenPlay", true)

function teleport_taanab_5ScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_taanab_5ScreenPlay:spawnSceneObjects()

end

function teleport_taanab_5ScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("taanab", "taanabport5", 1, 0, 55.2808, 0, 0, 0)

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To Corellia")
	createObserver(OBJECTRADIALUSED, "teleport_taanab_5ScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_taanab_5ScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("corellia", -173, 28, -4721, 0)
	return 0
end

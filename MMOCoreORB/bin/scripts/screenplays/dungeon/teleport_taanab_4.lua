teleport_taanab_4ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_taanab_4ScreenPlay", true)

function teleport_taanab_4ScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_taanab_4ScreenPlay:spawnSceneObjects()

end

function teleport_taanab_4ScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("taanab", "taanabport3", 1, 3606.65, 31.7, -5420.95, 60, 0)

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To Corellia")
	createObserver(OBJECTRADIALUSED, "teleport_taanab_4ScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_taanab_4ScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("corellia", -173, 28, -4721, 0)
	return 0
end

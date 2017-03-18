teleport_taanab_4ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_taanab_4ScreenPlay", true)

function teleport_corellia_pveScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_taanab_4ScreenPlay:spawnSceneObjects()

end

function teleport_taanab_4ScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("corellia", "taanabport3", 1, -169.059, 28, -4686.87, 355, 0 )

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To Taanab Zone")
	createObserver(OBJECTRADIALUSED, "teleport_taanab_4ScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_taanab_4ScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("taanab", 0, 0, 0, 0)
	return 0
end

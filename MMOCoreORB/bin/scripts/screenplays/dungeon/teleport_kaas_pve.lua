teleport_kaas_pveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_kaas_pveScreenPlay", true)

function teleport_kaas_pveScreenPlay:start()
	if (isZoneEnabled("kaas")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_kaas_pveScreenPlay:spawnSceneObjects()

end

function teleport_kaas_pveScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("kaas", "kaasport", 120, 3483.1, 5.0, -4838, 119, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel To kaas World Boss")
	createObserver(OBJECTRADIALUSED, "teleport_kaas_pveScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_kaas_pveScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kaas", 3526, 5, -4803, 0)
	return 0
end
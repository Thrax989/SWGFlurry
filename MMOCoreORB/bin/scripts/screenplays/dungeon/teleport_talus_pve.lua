teleport_talus_pveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_talus_pveScreenPlay", true)

function teleport_talus_pveScreenPlay:start()
	if (isZoneEnabled("talus")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_talus_pveScreenPlay:spawnSceneObjects()

end

function teleport_talus_pveScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("talus", "talusport", 120, 3483.1, 5.0, -4838, 119, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(INTERESTING)
	collector1:setCustomObjectName("\\#FF0000Travel To Talus World Boss")
	createObserver(OBJECTRADIALUSED, "teleport_talus_pveScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_talus_pveScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("talus", 3526, 5, -4803, 0)
	return 0
end

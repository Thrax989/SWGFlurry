teleport_lok_pveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_lok_pveScreenPlay", true)

function teleport_lok_pveScreenPlay:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_lok_pveScreenPlay:spawnSceneObjects()

end

function teleport_lok_pveScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("lok", "lokport", 120, 3483.1, 5.0, -4838, 119, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(INTERESTING)
	collector1:setCustomObjectName("\\#FF0000Travel To Lok World Boss")
	createObserver(OBJECTRADIALUSED, "teleport_lok_pveScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_lok_pveScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("lok", 3526, 5, -4803, 0)
	return 0
end

teleport_yavin4_pveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_yavin4_pveScreenPlay", true)

function teleport_yavin4_pveScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_yavin4_pveScreenPlay:spawnSceneObjects()

end

function teleport_yavin4_pveScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("yavin4", "yavin4port", 120, 3483.1, 5.0, -4838, 119, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(INTERESTING)
	collector1:setCustomObjectName("\\#FF0000Travel To yavin4 World Boss")
	createObserver(OBJECTRADIALUSED, "teleport_yavin4_pveScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_yavin4_pveScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("yavin4", 3526, 5, -4803, 0)
	return 0
end

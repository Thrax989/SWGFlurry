teleport_corellia_pveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_corellia_pveScreenPlay", true)

function teleport_corellia_pveScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_corellia_pveScreenPlay:spawnSceneObjects()

end

function teleport_corellia_pveScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("corellia", "corelliaport", 1, -159.006, 28, -4705.44, 88, 0 )

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(INTERESTING)
	collector1:setCustomObjectName("\\#00FF00Travel To Kaas PvP Zone")
	createObserver(OBJECTRADIALUSED, "teleport_corellia_pveScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_corellia_pveScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("kaas", -5108, 81, -2106, 0)
	return 0
end

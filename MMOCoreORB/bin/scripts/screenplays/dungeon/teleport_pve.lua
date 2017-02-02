teleport_pveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_pveScreenPlay", true)

function teleport_pveScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_pveScreenPlay:spawnSceneObjects()

end

function teleport_pveScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("corellia", "droidekaport", 1, -167.354, 28, -4739.3, 45, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To The Geo Cave")
	createObserver(OBJECTRADIALUSED, "teleport_pveScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_pveScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("yavin4", -6494, 83, -418, 0)
	return 0
end

teleport_mandalore_5ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_mandalore_5ScreenPlay", true)

function teleport_mandalore_5ScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_mandalore_5ScreenPlay:spawnSceneObjects()

end

function teleport_mandalore_5ScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("corellia", "mandaloreport5", 1, -158.97, 28, -4705.32, 175, 0 )

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To Mandalore Zone")
	createObserver(OBJECTRADIALUSED, "teleport_mandalore_5ScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_mandalore_5ScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("mandalore", 0, 0, 0, 0)
	return 0
end

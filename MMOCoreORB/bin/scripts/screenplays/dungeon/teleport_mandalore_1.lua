teleport_mandalore_1ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_mandalore_1ScreenPlay", true)

function teleport_mandalore_1ScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_mandalore_1ScreenPlay:spawnSceneObjects()

end

function teleport_mandalore_1ScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("corellia", "mandaloreport1", 1, -190.995, 28, -4686.68, 3, 0 )

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To Mandalore Sundari")
	createObserver(OBJECTRADIALUSED, "teleport_mandalore_1ScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_mandalore_1ScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("mandalore", 6284, 1, -6214, 0)
	return 0
end

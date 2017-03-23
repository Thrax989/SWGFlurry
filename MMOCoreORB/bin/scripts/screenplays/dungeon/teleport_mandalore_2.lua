teleport_mandalore_2ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_mandalore_2ScreenPlay", true)

function teleport_mandalore_2ScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_mandalore_2ScreenPlay:spawnSceneObjects()

end

function teleport_mandalore_2ScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("corellia", "mandaloreport2", 1, -188.998, 28, -4686.91, 1, 0 )

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To Mandalore Keldabe")
	createObserver(OBJECTRADIALUSED, "teleport_mandalore_2ScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_mandalore_2ScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("mandalore", 1561, 2, -6528, 0)
	return 0
end

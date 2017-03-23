teleport_mandalore_3ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_mandalore_3ScreenPlay", true)

function teleport_mandalore_3ScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_mandalore_3ScreenPlay:spawnSceneObjects()

end

function teleport_mandalore_3ScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("corellia", "mandaloreport3", 1, -185.052, 28, -4686.89, 357, 0 )

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To Mandalore Bralsin")
	createObserver(OBJECTRADIALUSED, "teleport_mandalore_3ScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_mandalore_3ScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("mandalore", -5682, 0, -5033, 0)
	return 0
end

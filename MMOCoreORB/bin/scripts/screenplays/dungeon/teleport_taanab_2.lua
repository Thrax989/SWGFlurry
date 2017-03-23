teleport_taanab_2ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_taanab_2ScreenPlay", true)

function teleport_taanab_2ScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_taanab_2ScreenPlay:spawnSceneObjects()

end

function teleport_taanab_2ScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("corellia", "taanabport2", 1, -161.005, 28, -4686.93, 354, 0 )

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To Taanab Pandath Spaceport")
	createObserver(OBJECTRADIALUSED, "teleport_taanab_1ScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_taanab_1ScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("taanab", 2099, 45, 5392, 0)
	return 0
end

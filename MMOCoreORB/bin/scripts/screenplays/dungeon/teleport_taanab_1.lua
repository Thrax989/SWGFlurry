teleport_taanab_1ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("teleport_taanab_1ScreenPlay", true)

function teleport_taanab_1ScreenPlay:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function teleport_taanab_1ScreenPlay:spawnSceneObjects()

end

function teleport_taanab_1ScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("hoth", "taanabport1", 1, -0.0253666, 0, -2017.2, 347, 0) 

	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#00FF00Travel To Corellia")
	createObserver(OBJECTRADIALUSED, "teleport_taanab_1ScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function teleport_taanab_1ScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("corellia", -173, 28, -4721, 0)
	return 0
end

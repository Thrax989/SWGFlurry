sherkarReturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("sherkarReturnScreenPlay", true)

function sherkarReturnScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function sherkarReturnScreenPlay:spawnSceneObjects()

end

function sherkarReturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("dungeon2", "teleporter", 120, -6.7, -0.8, 3.6, -83, 14201161)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Return to the Surface")
	createObserver(OBJECTRADIALUSED, "sherkarReturnScreenPlay", "returnSherKar", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function sherkarReturnScreenPlay:returnSherKar(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("mustafar", -2530.3, 225.2, 1657.8, 0)
	return 0
end

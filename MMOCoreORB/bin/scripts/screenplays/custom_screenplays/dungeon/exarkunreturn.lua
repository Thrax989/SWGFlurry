exarkunreturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("exarkunreturnScreenPlay", true)

function exarkunreturnScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function exarkunreturnScreenPlay:spawnSceneObjects()

end

function exarkunreturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("dungeon2", "teleporter", 120, -15.2, 0.3, -117.5, 121, 14200872)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Exit Dungeon")
	createObserver(OBJECTRADIALUSED, "exarkunreturnScreenPlay", "returnExarkun", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function exarkunreturnScreenPlay:returnExarkun(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("yavin4", -2.3, -6.4, -1.8, 3465393)
	return 0
end

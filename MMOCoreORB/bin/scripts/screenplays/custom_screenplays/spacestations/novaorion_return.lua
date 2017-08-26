novaOrionReturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("novaOrionReturnScreenPlay", true)

function novaOrionReturnScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function novaOrionReturnScreenPlay:spawnSceneObjects()

end

function novaOrionReturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("dungeon2", "teleporter", 120, 30.3, 0.8, -31.3, 126, 14200887)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to Mos Eisley")
	createObserver(OBJECTRADIALUSED, "novaOrionReturnScreenPlay", "returnNova", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function novaOrionReturnScreenPlay:returnNova(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("tatooine", 3595.2, 5, -4818.4, 0)
	return 0
end

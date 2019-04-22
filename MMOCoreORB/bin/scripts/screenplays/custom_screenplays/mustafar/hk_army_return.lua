hkArmyReturnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("hkArmyReturnScreenPlay", true)

function hkArmyReturnScreenPlay:start()
	if (isZoneEnabled("mustafar")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function hkArmyReturnScreenPlay:spawnSceneObjects()

end

function hkArmyReturnScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("mustafar", "teleporter", 120, 3650.7, 74.8, 732.7, 64, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Return to Mensix")
	createObserver(OBJECTRADIALUSED, "hkArmyReturnScreenPlay", "returnHkArmy", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function hkArmyReturnScreenPlay:returnHkArmy(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("mustafar", -2530.3, 225.2, 1657.8, 0)
	return 0
end

nightsisterteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("nightsisterteleporterScreenPlay", true)

function nightsisterteleporterScreenPlay:start()
	if (isZoneEnabled("dathomir")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function nightsisterteleporterScreenPlay:spawnSceneObjects()

end

function nightsisterteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("dathomir", "teleporter", 120, -91.3, -101, -104.6, -178, 4115629)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Enter Axkva Min's Lair")
	createObserver(OBJECTRADIALUSED, "nightsisterteleporterScreenPlay", "teleportNightsister", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function nightsisterteleporterScreenPlay:teleportNightsister(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 19.3, 0.1, 0.5, 14201104)
	return 0
end

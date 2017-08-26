isdteleporterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("isdteleporterScreenPlay", true)

function isdteleporterScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end


function isdteleporterScreenPlay:spawnSceneObjects()

end

function isdteleporterScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("naboo", "teleporter", 120, 2434.4, 292, -3898, 101, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to the Avenger")
	createObserver(OBJECTRADIALUSED, "isdteleporterScreenPlay", "teleportisd", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function isdteleporterScreenPlay:teleportisd(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", 13.9, 173.8, 14.6, 14201198)
	return 0
end

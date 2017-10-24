require('utils.player_switch_zone')
bloodfin_starport = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("bloodfin_starport", true)

local ObjectManager = require("managers.object.object_manager")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function bloodfin_starport:start()
	if (not isZoneEnabled("tatooine")) or (not isZoneEnabled("naboo")) or (not isZoneEnabled("corellia")) then
		return 0
	end
	
	self:spawnSceneObjects()
	self:spawnMobiles()
end

function bloodfin_starport:createObserver(pCollector, CustomName, ObserverName)
	local object = SceneObject(pCollector)
	object:setCustomObjectName(CustomName)
	createObserver(OBJECTRADIALUSED, "bloodfin_starport", ObserverName, pCollector)
	return 0
end

function bloodfin_starport:spawnMobiles()
	
	local pBarker = spawnMobile("tatooine", "stresstest_shuttleloc_barker", 1, -1290.2, 12.0, -3589.6, 133, 0)
	ObjectManager.withCreatureObject(pBarker, function(barker)
		barker:setOptionsBitmask(256)
		self:barkShuttleLocation(pBarker)
	end)
	
	local pBarker3 = spawnMobile("naboo", "stresstest_shuttleloc_barker", 1, -4880.4, 6.1, 4146.2, 40, 0)
	ObjectManager.withCreatureObject(pBarker3, function(barker3)
		barker3:setOptionsBitmask(256)
		self:barkShuttleLocation(pBarker3)
	end)	
end

function bloodfin_starport:spawnSceneObjects()
	local pCollector = spawnSceneObject("tatooine", "object/tangible/furniture/all/frn_all_command_console.iff",-1449.6, 0.0, -5682, 0, 0, 0, 1, 0)
	self:createObserver(pCollector, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	

	local pCollector2 = spawnSceneObject("naboo", "object/tangible/furniture/all/frn_all_command_console.iff", -4878.2, 6, 4144.3, 0, 35, 0, 35, 0)
	self:createObserver(pCollector2, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	

	--Return from DWB
	local pCollector3 = spawnSceneObject("tatooine", "object/tangible/furniture/all/frn_all_command_console.iff", -1288.1, 12.1, -3592.3, 0, 0, 0, 1, 0)
	self:createObserver(pCollector3, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	
end

function bloodfin_starport:barkShuttleLocation(pBarker)
	if (pBarker ~= nil) then
		spatialChat(pBarker, "\\#FF0000 Bloodfin insta transit Starport open for travellers, Coronet Corellia. Click the terminal here for instant transport.\nEnjoy your flight, and thank you for flying Bloodfin.")
		createEvent(55000, "bloodfin_starport", "barkShuttleLocation", pBarker)
	end
	return 0
end
--[[
function bloodfin_starport:barkShuttleLocation(pBarker2)
	if (pBarker2 ~= nil) then
		spatialChat(pBarker2, "\\#FF0000 Bloodfin insta transit Starport open for travellers, Coronet Corellia. Click the terminal here for instant transport.\nEnjoy your flight, and thank you for flying Bloodfin.")
		createEvent(55000, "bloodfin_starport", "barkShuttleLocation", pBarker2)
	end
	return 0
end
]]
function bloodfin_starport:barkShuttleLocation(pBarker3)
	if (pBarker3 ~= nil) then
		spatialChat(pBarker3, "\\#FF0000 Bloodfin insta transit Starport open for travellers, Coronet Corellia. Click the terminal here for instant transport.\nEnjoy your flight, and thank you for flying Bloodfin.")
		createEvent(85000, "bloodfin_starport", "barkShuttleLocation", pBarker3)
	end
	return 0
end

function bloodfin_starport:teleportMB(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 20 ,"corellia", -148.3, 28, -4721.5, 85)
	return 0
end


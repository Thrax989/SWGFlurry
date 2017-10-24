bloodfin_starport2 = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("bloodfin_starport2", true)

local ObjectManager = require("managers.object.object_manager")
--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function bloodfin_starport2:start()
	if (not isZoneEnabled("tatooine")) or (not isZoneEnabled("naboo")) or (not isZoneEnabled("hoth")) then
		return 0
	end
	
	self:spawnSceneObjects()
	self:spawnMobiles()
end

function bloodfin_starport2:spawnMobiles()
--	local pShuttle = spawnMobile("tatooine", "lambda_shuttle", 1, -1401.9, 1, -5646.2, 180, 0)
--	local shuttle = LuaCreatureObject(pShuttle)
--	shuttle:setOptionsBitmask(256)
--	shuttle:setPosture(PRONE)
	
--	local pShuttle2 = spawnMobile("tatooine", "lambda_shuttle", 1, -1382.6, 1, -5666.9, -92, 0)
--	local shuttle2 = LuaCreatureObject(pShuttle2)
--	shuttle2:setOptionsBitmask(256)
--	shuttle2:setPosture(PRONE)
	
--	local pShuttle3 = spawnMobile("tatooine", "lambda_shuttle", 1, -1382.6, 1, -5686.9, -92, 0)
--	local shuttle3 = LuaCreatureObject(pShuttle3)
--	shuttle3:setOptionsBitmask(256)
--	shuttle3:setPosture(PRONE)
	
--	local pShuttle4 = spawnMobile("tatooine", "lambda_shuttle", 1, -1382.6, 1, -5706.9, -92, 0)
--	local shuttle4 = LuaCreatureObject(pShuttle4)
--	shuttle4:setOptionsBitmask(256)
--	shuttle4:setPosture(PRONE)

--	local pShuttle5 = spawnMobile("tatooine", "lambda_shuttle", 1, -1382.6, 1, -5726.9, -92, 0)
--	local shuttle5 = LuaCreatureObject(pShuttle5)
--	shuttle5:setOptionsBitmask(256)
--	shuttle5:setPosture(PRONE)
	
--	local pShuttle6 = spawnMobile("tatooine", "lambda_shuttle", 1, -1382.6, 1, -5746.9, -92, 0)
--	local shuttle6 = LuaCreatureObject(pShuttle6)
--	shuttle6:setOptionsBitmask(256)
--	shuttle6:setPosture(PRONE)
	
--	local pShuttle7 = spawnMobile("tatooine", "lambda_shuttle", 1, -1382.6, 1, -5766.9, -92, 0)
--	local shuttle7 = LuaCreatureObject(pShuttle7)
--	shuttle7:setOptionsBitmask(256)
--	shuttle7:setPosture(PRONE)

--	local pShuttle8 = spawnMobile("tatooine", "lambda_shuttle", 1, -1382.6, 1, -5786.9, -92, 0)
--	local shuttle8 = LuaCreatureObject(pShuttle8)
--	shuttle8:setOptionsBitmask(256)
--	shuttle8:setPosture(PRONE)
	
--	local pShuttle9 = spawnMobile("tatooine", "lambda_shuttle", 1, -1401.3, 1, -5798.3, -2, 0)
--	local shuttle9 = LuaCreatureObject(pShuttle9)
--	shuttle9:setOptionsBitmask(256)
--	shuttle9:setPosture(PRONE)
	
--	local pShuttle10 = spawnMobile("tatooine", "lambda_shuttle", 1, -1421.3, 1, -5798.3, -2, 0)
--	local shuttle10 = LuaCreatureObject(pShuttle10)
--	shuttle10:setOptionsBitmask(256)
--	shuttle10:setPosture(PRONE)
	
--	local pBarker = spawnMobile("tatooine", "stresstest_shuttleloc_barker", 1, 3524.6, 5.0, -4810.6, 33, 0)
--	local barker = LuaCreatureObject(pBarker)
--	barker:setOptionsBitmask(256)
--	self:barkShuttleLocation(pBarker)

--	local pBarker2 = spawnMobile("corellia", "stresstest_shuttleloc_barker", 1, -148.3, 28, -4723.3, 85, 0)
--	local barker2 = LuaCreatureObject(pBarker2)
--	barker2:setOptionsBitmask(256)
--	self:barkShuttleLocation(pBarker2)

--	local pBarker3 = spawnMobile("naboo", "stresstest_shuttleloc_barker", 1, -4880.4, 6.1, 4146.2, 40, 0)
--	local barker3 = LuaCreatureObject(pBarker3)
--	barker2:setOptionsBitmask(256)
--	self:barkShuttleLocation(pBarker3)
	

end

function bloodfin_starport2:spawnSceneObjects()
	local pCollector = spawnSceneObject("tatooine", "object/tangible/furniture/all/frn_all_command_console.iff", 2447.8, 2.0, 4740.3, 0, 0, 0, 0, 0)
	local object = SceneObject(pCollector)
	object:setCustomObjectName("\\#ee3377Travel to Hoth")
	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportHoth", pCollector)
	
--	local pCollector2 = spawnSceneObject("naboo", "object/tangible/furniture/all/frn_all_command_console.iff", -4878.2, 6, 4144.3, 0, 35, 0, 35, 0)
--	local collector2 = LuaSceneObject(pCollector2)
--	local col2creo = LuaCreatureObject(pCollector2)
--	col2creo:setOptionsBitmask(264)
--	collector2:setCustomObjectName("\\#33ee77Travel to Mos Bloodfin Starport")
--	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportMB", pCollector2)
	
	--Return from DWB
--	local pCollector3 = spawnSceneObject("tatooine", "object/tangible/furniture/all/frn_all_command_console.iff", -1288.1, 12.1, -3592.3, 0, 0, 0, 1, 0)
--	local collector3 = LuaSceneObject(pCollector3)
--	local col3creo = LuaCreatureObject(pCollector3)
--	col3creo:setOptionsBitmask(264)
--	collector3:setCustomObjectName("\\#ee3377Travel to Mos Bloodfin Starport")
--	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportMB", pCollector3)
	
	--DWB BLUEFROG
	--spawnSceneObject("naboo", "object/tangible/terminal/terminal_character_builder.iff", -5514.4, 6.4, 4370.5, 0, 0, 0, 1, 0)
	
	--GEO BLUEFROG
	--spawnSceneObject("tatooine", "object/tangible/terminal/terminal_character_builder.iff", -1431.7, 2.2, -5647.5, 0, 0, 0, 1, 0)
	
	--Return from GEO
--	local pCollector4 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1449.6, 0.0, -5681, 0, 0, 0, 1, 0)
--	local collector4 = LuaSceneObject(pCollector4)
--	local col4creo = LuaCreatureObject(pCollector4)
--	col4creo:setOptionsBitmask(264)
--	collector4:setCustomObjectName("\\#33ee77Travel to Theed Starport")
--	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportNB", pCollector4)
		--Return to starport
--	local pCollector5 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff",  -1449.6, 0.0, -5682, 0, 0, 0, 1, 0)
--	local collector5 = LuaSceneObject(pCollector5)
--	local col5creo = LuaCreatureObject(pCollector5)
--	col5creo:setOptionsBitmask(264)
--	collector5:setCustomObjectName("\\#33ee77Travel to Cnet Starport, Corellia")
--	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportCnet", pCollector5)

	
--	local pCollector6 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1449.6, 0.0, -5683, 0, 0, 0, 1, 0)
--	local collector6 = LuaSceneObject(pCollector6)
--	local col6creo = LuaCreatureObject(pCollector6)
--	col6creo:setOptionsBitmask(264)
--	collector6:setCustomObjectName("\\#ee3377Travel to Bestine Starport")
--	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportTT", pCollector6)

--	local pCollector7 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1449.6, 0.0, -5684, 0, 0, 0, 1, 0)
--	local collector7 = LuaSceneObject(pCollector7)
--	local col7creo = LuaCreatureObject(pCollector7)
--	col7creo:setOptionsBitmask(264)
--	collector7:setCustomObjectName("\\#ee3377Travel to Talus")
--	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportTS", pCollector7)

--	local pCollector8 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1449.6, 0.0, -5685, 0, 0, 0, 1, 0)
--	local collector8 = LuaSceneObject(pCollector8)
--	local col8creo = LuaCreatureObject(pCollector8)
--	col8creo:setOptionsBitmask(264)
--	collector8:setCustomObjectName("\\#ee3377Travel to Rori")
--	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportRR", pCollector8)

--	local pCollector9 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1449.6, 0.0, -5686, 0, 0, 0, 1, 0)
--	local collector9 = LuaSceneObject(pCollector9)
--	local col9creo = LuaCreatureObject(pCollector9)
--	col9creo:setOptionsBitmask(264)
--	collector9:setCustomObjectName("\\#ee3377Travel to Lok")
--	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportLK", pCollector9)

--	local pCollector10 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1449.6, 0.0, -5687, 0, 0, 0, 1, 0)
--	local collector10 = LuaSceneObject(pCollector10)
--	local col10creo = LuaCreatureObject(pCollector10)
--	col10creo:setOptionsBitmask(264)
--	collector10:setCustomObjectName("\\#ee3377Travel to Endor")
--	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportED", pCollector10)

--	local pCollector11 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1449.6, 0.0, -5688, 0, 0, 0, 1, 0)
--	local collector11 = LuaSceneObject(pCollector11)
--	local col11creo = LuaCreatureObject(pCollector11)
--	col11creo:setOptionsBitmask(264)
--	collector11:setCustomObjectName("\\#ee3377Travel to Dantooine")
--	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportDT", pCollector11)

--	local pCollector12 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1449.6, 0.0, -5689, 0, 0, 0, 1, 0)
--	local collector12 = LuaSceneObject(pCollector12)
--	local col12creo = LuaCreatureObject(pCollector12)
--	col12creo:setOptionsBitmask(264)
--	collector12:setCustomObjectName("\\#ee3377Travel to Dathomir")
--	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportDR", pCollector12)

	--[[local pCollector13 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1449.6, 0.0, -5690, 0, 0, 0, 1, 0)
	local collector13 = LuaSceneObject(pCollector13)
	local col13creo = LuaCreatureObject(pCollector13)
	col13creo:setOptionsBitmask(264)
	collector13:setCustomObjectName("\\#ee3377Travel to Yavin IV")
	createObserver(OBJECTRADIALUSED, "bloodfin_starport2", "teleportYV", pCollector13)]]


end

function bloodfin_starport2:barkShuttleLocation(pBarker)
--	if (pBarker ~= nil) then
--		spatialChat(pBarker, "\\#FF0000Mos Bloodfin insta transit Starport open for travellers, Mos Bloodfin Tatooine. Click the terminal here for instant transport.\nEnjoy your flight, and thank you for flying Mos Bloodfin.")
--		createEvent(55000, "bloodfin_starport2", "barkShuttleLocation", pBarker)
--	end
-- 	return 0
--end

--function bloodfin_starport2:barkShuttleLocation(pBarker2)
--	if (pBarker2 ~= nil) then
--		spatialChat(pBarker2, "\\#FF0000Mos Bloodfin insta transit Starport open for travellers, Mos Bloodfin Tatooine. Click the terminal here for instant transport.\nEnjoy your flight, and thank you for flying Mos Bloodfin.")
--		createEvent(55000, "bloodfin_starport2", "barkShuttleLocation", pBarker2)
--	end
	--return 0
--end

--function bloodfin_starport2:barkShuttleLocation(pBarker3)
--	if (pBarker3 ~= nil) then
--		spatialChat(pBarker3, "\\#FF0000Mos Bloodfin insta transit Starport open for travellers, Mos Bloodfin Tatooine. Click the terminal here for instant transport.\nEnjoy your flight, and thank you for flying Mos Bloodfin.")
--		createEvent(85000, "bloodfin_starport2", "barkShuttleLocation", pBarker3)
--	end
	--return 0
end

function bloodfin_starport2:teleportHoth(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 20 , "hoth", -434.8, 36.6, -955.9, 0)
	return 0
end

--function bloodfin_starport2:teleportNB(pCollector, pPlayer)
--	local player = LuaSceneObject(pPlayer)
--	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "naboo", -4876, 6.1, 4147, 0)
--	return 0
--end

--function bloodfin_starport2:teleportCnet(pCollector, pPlayer)
--	local player = LuaSceneObject(pPlayer)
--	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "corellia", -159, 28, -4774, 0)
--	return 0
--end

--function bloodfin_starport2:teleportTT(pCollector, pPlayer)
--	local player = LuaSceneObject(pPlayer)
--	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "tatooine", -1287, 12, -3595, 85)
--	return 0
--end

--function bloodfin_starport2:teleportRR(pCollector, pPlayer)
--	local player = LuaSceneObject(pPlayer)
--	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "rori", 5364.9, 80, 5664.1, -178)
--	return 0
--end

--function bloodfin_starport2:teleportTS(pCollector, pPlayer)
--	local player = LuaSceneObject(pPlayer)
--	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "talus", 4453.6, 2.0, 5272.8, -140)
--	return 0
--end

--function bloodfin_starport2:teleportLK(pCollector, pPlayer)
--	local player = LuaSceneObject(pPlayer)
--	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "lok", 464.2, 8.8, 5502.6, -140)
--	return 0
--end

--function bloodfin_starport2:teleportED(pCollector, pPlayer)
--	local player = LuaSceneObject(pPlayer)
--	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "endor", -961.9, 73.0, 1546.8, -16)
--	return 0
--end

--function bloodfin_starport2:teleportDT(pCollector, pPlayer)
--	local player = LuaSceneObject(pPlayer)
--	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "dantooine", -625, 3.0, 2495.2, -127)
--	return 0
--end

--function bloodfin_starport2:teleportDR(pCollector, pPlayer)
--	local player = LuaSceneObject(pPlayer)
--	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "dathomir", 607.2, 6.0, 3084.8, -61)
--	return 0
--end

--[[function bloodfin_starport2:teleportYV(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "yavin4", -272.4, 35, 4882.6, -127)
--	return 0
end]]




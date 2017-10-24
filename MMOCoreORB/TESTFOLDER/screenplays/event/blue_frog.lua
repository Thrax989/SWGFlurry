blue_frog = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("blue_frog", true)

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function blue_frog:start()
	if (not isZoneEnabled("tatooine")) or (not isZoneEnabled("yavin4")) or (not isZoneEnabled("endor")) then
		return 0
	end
	
	self:spawnSceneObjects()
	self:spawnMobiles()
end

function blue_frog:spawnMobiles()
--	local pShuttle = spawnMobile("cinco_city_test_m5", "lambda_shuttle", 1, -2124.3, 28, -4532.8, 0, 0)
--	local shuttle = LuaCreatureObject(pShuttle)
--	shuttle:setOptionsBitmask(256)
--	shuttle:setPosture(PRONE)
	
--	local pShuttle2 = spawnMobile("cinco_city_test_m5", "lambda_shuttle", 1, -1366.3, 28, -5477.8, 0, 0)
--	local shuttle2 = LuaCreatureObject(pShuttle2)
--	shuttle2:setOptionsBitmask(256)
--	shuttle2:setPosture(PRONE)
	
--	local pShuttle3 = spawnMobile("yavin4", "lambda_shuttle", 1, -6489.4, 84.5, -454.3, 9, 0)
--	local shuttle3 = LuaCreatureObject(pShuttle3)
--	shuttle3:setOptionsBitmask(256)
--	shuttle3:setPosture(PRONE)
	
--	local pShuttle4 = spawnMobile("endor", "lambda_shuttle", 1, 3220, 24, -3464, -90, 0)
--	local shuttle4 = LuaCreatureObject(pShuttle4)
--	shuttle4:setOptionsBitmask(256)
--	shuttle4:setPosture(PRONE)
	
--	local pBarker = spawnMobile("corellia", "stresstest_shuttleloc_barker", 1, -149, 28, -4706, 140, 0)
--	local barker = LuaCreatureObject(pBarker)
--	barker:setOptionsBitmask(256)
--	self:barkShuttleLocation(pBarker)

--	local pBarker = spawnMobile("cinco_city_test_m5", "darth_vader", 1, -146, 28, -4718, 140, 0)
--	local barker = LuaCreatureObject(pBarker)
--	barker:setOptionsBitmask(256)
--	self:barkShuttleLocation(pBarker)

end

function blue_frog:spawnSceneObjects()
--	local pCollector = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 5332, 10, 1352, 0, 1, 0, 0, 0)
--	local collector = LuaSceneObject(pCollector)
--	local col2creo = LuaCreatureObject(pCollector)
--	col2creo:setOptionsBitmask(264)
--	collector:setCustomObjectName("\\#ee3377Travel to Mos Bloodfin Tatooine")
--	createObserver(OBJECTRADIALUSED, "blue_frog", "teleportDWB", pCollector)
	
--	local pCollector2 = spawnSceneObject("cinco_city_test_m5", "object/tangible/furniture/imperial/data_terminal_s1.iff", -171, 28, -4783 , 0, 1, 0, 0, 0)
--	local collector2 = LuaSceneObject(pCollector2)
--	local col2creo = LuaCreatureObject(pCollector2)
--	col2creo:setOptionsBitmask(264)
--	collector2:setCustomObjectName("\\#33ee77Travel to the Geonosian Bio Lab")
--	createObserver(OBJECTRADIALUSED, "blue_frog", "teleportGEO", pCollector2)
	
	--Return from DWB
--	local pCollector3 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -2121.2, 7.8, -4535 , 0, 0.707107, 0, 0.707107, 0)
--	local collector3 = LuaSceneObject(pCollector3)
--	local col3creo = LuaCreatureObject(pCollector3)
--	col3creo:setOptionsBitmask(264)
--	collector3:setCustomObjectName("\\#ee3377Travel to Lake Dread, Naboo")
--	createObserver(OBJECTRADIALUSED, "blue_frog", "teleportCnet", pCollector3)
	
	--DWB BLUEFROG
	spawnSceneObject("tatooine", "object/tangible/terminal/terminal_character_builder.iff", 72, 52.1, -5353, 0, 0, 0, 1, 0)

	--DWB BLUEFROG
	spawnSceneObject("tatooine", "object/tangible/terminal/terminal_character_builder.iff", -5076, 75.1, -6618.3, 0, 0, 0, 1, 0)
	
	--GEO BLUEFROG
--	spawnSceneObject("yavin4", "object/tangible/terminal/terminal_character_builder.iff", -6479.1, 84.2, -435.3, 0, 0.4771588, 0, -0.8788171, 0)
	
	--Return from GEO
--	local pCollector4 = spawnSceneObject("yavin4", "object/tangible/furniture/imperial/data_terminal_s1.iff", -6493.1, 84.2, -452.3, 0, 0.996917, 0, 0.078459, 0)
--	local collector4 = LuaSceneObject(pCollector4)
--	local col4creo = LuaCreatureObject(pCollector4)
--	col4creo:setOptionsBitmask(264)
--	collector4:setCustomObjectName("\\#33ee77Travel to Coronet, Corellia")
--	createObserver(OBJECTRADIALUSED, "blue_frog", "teleportCnet", pCollector4)
		--Return to starport
--	local pCollector5 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff",  -475, 28, -4490 , 0, 1, 0, 0, 0)
--	local collector5 = LuaSceneObject(pCollector5)
--	local col5creo = LuaCreatureObject(pCollector5)
--	col5creo:setOptionsBitmask(264)
--	collector5:setCustomObjectName("\\#33ee77Travel to Starport, Corellia")
--	createObserver(OBJECTRADIALUSED, "blue_frog", "teleportCnet", pCollector5)

	--Cloaner BLUEFROG
--	spawnSceneObject("corellia", "object/tangible/terminal/terminal_character_builder.iff", -475, 28, -4501, 0, 1, 0, 0, 0)
	
--	local pCollector6 = spawnSceneObject("endor", "object/tangible/furniture/imperial/data_terminal_s1.iff", 3220, 24, -3464 , 0, 0.707107, 0, -0.707107, 0)
--	local collector6 = LuaSceneObject(pCollector6)
--	local col6creo = LuaCreatureObject(pCollector6)
--	col6creo:setOptionsBitmask(264)
--	collector6:setCustomObjectName("\\#ee3377Travel to the Death Watch Bunker")
--	createObserver(OBJECTRADIALUSED, "blue_frog", "teleportDWB", pCollector6)
end

function blue_frog:barkShuttleLocation(pBarker)
	if (pBarker ~= nil) then
		spatialChat(pBarker, "\\#881100WARNING--TOXIC AREA!\n\nPlease proceed to the shuttles near South Coronet (-154 -4767). The Empire has ordered a complete evacuation of the city. You must proceed to the source of the disease and attempt to find the cause of this catastrophy. Some of you will stay and kill these derranged creatures, they have raided the Emperors vault, and are holding high value items.\n\nProceed now and kill them all.")
		createEvent(15000, "blue_frog", "barkShuttleLocation", pBarker)
	end
end

function blue_frog:teleportDWB(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	player:switchZone("tatooine", -2122, 7, -4526, 0)
end

function blue_frog:teleportGEO(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	player:switchZone("yavin4", -6490, 0, -446, 0)
end

function blue_frog:teleportCnet(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	player:switchZone("naboo", -159, 28, -4774, 0)
end

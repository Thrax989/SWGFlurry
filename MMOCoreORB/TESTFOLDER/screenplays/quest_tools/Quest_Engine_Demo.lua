-- BY: Mindsoft											-- last edited: 3.3.2017	-- (this code belongs soley to BloodfinEMU)
-----------------------------------------------(SCREENPLAY)
Quest_Engine_Demo = ScreenPlay:new {numberOfActs = 1,
	id = 128, --set wp id for screenplay
	str = "Quest_Engine_Demo",
	rState = {--'reset-State'  -states after reward (used for bugged toon resets or if player loses his wp's)
		[7] = 1,
		[10] = 1,
		[13] = 1,
	},

--		 	planet	   wpX	  wpY
	wp = { --wp id's used for resets
		[1] = {"mustafar", 363, -1377}, --mission giver one
		[2] = {"mustafar", 1105, -185}, --misison giver three
	},
				
}
registerScreenPlay("Quest_Engine_Demo", true)

--Spawn Quest givers and triggers.
function Quest_Engine_Demo:start()
	if (isZoneEnabled("mustafar")) then

		--spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )  
			--spawns 1 mobile

		--rspawnMobile(zone, mobile, respawn, x, z, y, heading, parentID, spawnRange, ai)
			--spawns 1 mobile in specified random range with specified ai

		--lspawnMobile(zoneName, spawnList, respawnTimer, x, z, y, heading, parentID, spawnRange, spawnCount, ai)
			--spawns specified number of mobiles from specified random list in specified random range with specified ai
--[SPAWNS]]

--Quest Npc's
	spawnMobile("mustafar", "musty_mission_test_giver_one",1, 363, 223, -1377, 90, 0 )
	rspawnMobile("mustafar", "musty_mission_test_giver_two",1, -151, 83, -1017, 90, 0, 5,"" )
	rspawnMobile("mustafar", "musty_mission_test_giver_three",1, 1105, 89, -185, 90, 0, 1,"" )
	lspawnMobile("mustafar", {"scientist", "r2", "junk_dealer", "hunter", "trainer_scout", "trainer_ranger", "trainer_creaturehandler", "gold_ticket_vendor"}, math.random(60,600), 1116, 88, -178, 90, 0, 15, 3,"" )


--Quest-kill mobiles
	--spawn talrus(weak)
	local sTbl = lspawnMobile("mustafar", {"musty_immature_tulrus"},60, 1158, 89, -46, 90, 0, 100, 15,"" )--spawn and getspawntable
	foreach(sTbl,function(pObj)if LuaSceneObject(pObj) then createObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "killTalrus", pObj) end end)
	lspawnMobile("mustafar", {"musty_sherkar_quest_spawn"}, 60, -255, 63, -942, 90, 0, 40, 6,"" )

	print("mustifar legacy chain: mobiles spawned")

--Quest-clicky objects
		--spawnSceneObject(<planet>, <objecttemplatefile>, x, z, y, <cell>, dw, dx, dy, dz> setting dw , dx , dy and dz
	--encrypted datapad
	local clickyOne = spawnSceneObject("mustafar","object/tangible/mindsoft/quest/musty_quest_ledger.iff", 290, 223.5, -1370, 0, math.rad(0))
	spawnSceneObject("mustafar","object/static/particle/pt_light_blink_blue.iff", 290, 223.5, -1370, 0, math.rad(0))
	LuaSceneObject(clickyOne):setCustomObjectName("Encrypted Datapad")
		--(questString, functionName, testState, timer, buttonText,anim)
	local str = ("Quest_Engine_Demo,clickyOne,0,4000,Collect Data,128")
	writeStringData("spName:"..tostring(clickyOne),str)

	--analyst's datapad
	local clickyTwo = spawnSceneObject("mustafar","object/tangible/mindsoft/quest/musty_quest_ledger.iff", -313, 143.8, -1666, 0, math.rad(0))
	spawnSceneObject("mustafar","object/static/particle/pt_light_blink_blue.iff", -313, 143.5, -1666, 0, math.rad(0))
	LuaSceneObject(clickyTwo):setCustomObjectName("Analyst's Datapad")
	str = ("Quest_Engine_Demo,clickyTwo,2,4000,Retrieve Datapad,128")
	writeStringData("spName:"..tostring(clickyTwo),str)

	--egg one
	local egg = spawnSceneObject("mustafar","object/tangible/lair/base/poi_all_lair_nest_large.iff", 991, 120, -336, 0, math.rad(0))
	LuaSceneObject(egg):setCustomObjectName("Fertile Tulrus Nest")
	LuaSceneObject(egg):setObjectMenuComponent("click_menu")
	str = ("Quest_Engine_Demo,eggOne,22,4000,Retrieve Egg,128")
	writeStringData("spName:"..tostring(egg),str)
	sTbl = lspawnMobile("mustafar", {"musty_matriarch_tulrus"},120, 991, 120, -336, 90, 0, 20, math.random(2,5),"" )
	foreach(sTbl,function(pObj) createObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "killTulrusFemTwo", pObj) end)

	--egg two
	egg = spawnSceneObject("mustafar","object/tangible/lair/base/poi_all_lair_nest_large.iff", 1059, 105, -393, 0, math.rad(0))
	LuaSceneObject(egg):setCustomObjectName("Fertile Tulrus Nest")
	LuaSceneObject(egg):setObjectMenuComponent("click_menu")
	str = ("Quest_Engine_Demo,eggTwo,23,4000,Retrieve Egg,128")
	writeStringData("spName:"..tostring(egg),str)
	sTbl = lspawnMobile("mustafar", {"musty_matriarch_tulrus"},120, 1059, 105, -393, 90, 0, 20, math.random(2,5),"" )
	foreach(sTbl,function(pObj) createObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "killTulrusFemTwo", pObj) end)

	--egg three
	egg = spawnSceneObject("mustafar","object/tangible/lair/base/poi_all_lair_nest_large.iff", 1369, 107, -285, 0, math.rad(0))
	LuaSceneObject(egg):setCustomObjectName("Fertile Tulrus Nest")
	LuaSceneObject(egg):setObjectMenuComponent("click_menu")
	str = ("Quest_Engine_Demo,eggThree,24,4000,Retrieve Egg,128")
	writeStringData("spName:"..tostring(egg),str)
	sTbl = lspawnMobile("mustafar", {"musty_matriarch_tulrus"},120, 1369, 107, -285, 90, 0, 20, math.random(2,5),"" )
	foreach(sTbl,function(pObj) createObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "killTulrusFemTwo", pObj) end)

	--huntsmans campsite
	spawnSceneObject("mustafar","object/tangible/camp/camp_tent_s1.iff", 1112, 88.8, -190, 0, math.rad(-20))
	spawnSceneObject("mustafar","object/tangible/camp/camp_tent_s4.iff", 1103, 89, -190, 0, math.rad(123))
	spawnSceneObject("mustafar","object/building/poi/scout_camp_s2.iff", 1115, 88.8, -180, 0, math.rad(22))
	spawnSceneObject("mustafar","object/static/particle/particle_campfire_style_1.iff", 1108, 89.1, -185, 0, math.rad(-20))
	spawnSceneObject("mustafar","object/tangible/camp/campfire_logs_smoldering.iff", 1108, 88.9, -185, 0, math.rad(-20))
	local pointer = spawnSceneObject("mustafar","object/tangible/loot/mustafar/bones_must_monster_jaw_large.iff", 1106, 88.9, -179.4, 0, math.rad(-167))
	LuaSceneObject(pointer):setCustomObjectName(" ")

	end --End zone enabled

end

--[Observer Handlers]

--clicky one observer handler
function Quest_Engine_Demo:clickyOne(pPlayer)
	--print("running clicky one")
	--player:playMusicMessage("sound/ui_select_info.snd")
	bf_tools:reward( pPlayer, "update", 1, "Quest_Engine_Demo", "Encrypted data found!\n\n lkajf3890fuj273ufdjg057894\n\nYou should seek out a data analyst to decypher this message.")
	bf_tools:addWaypointSpecial(pPlayer, false, "mustafar", "Find Analyst", "quest giver 1", 363, -1377, WAYPOINTYELLOW, true, true, 128)
	return 0
end

--clicky two observer handler
function Quest_Engine_Demo:clickyTwo(pPlayer)
	bf_tools:reward( pPlayer, "update", 3, "Quest_Engine_Demo", "Analyst's Datapad FOUND!\n\nYou should return this to him immediately.")
	bf_tools:addWaypointSpecial(pPlayer, false, "mustafar", "Return Datapad", "", 363, -1377, WAYPOINTYELLOW, true, true, 128)
	return 0
end

--defeat malfosa observer handler
function Quest_Engine_Demo:malfosa(object,pPlayer)
	local qStr = "Quest_Engine_Demo"
	local qMsg = "Malfosa Defeated:\n\nReturn the analyst for your REWARD!"
	bf_tools:rewardGroupAll( pPlayer, "screenplay", 12, qStr, {11,qStr,qMsg,"mustafar","Return to Analyst",363,-1377,WAYPOINTYELLOW,128})
	return 0
end

--kill 5  talrus observer handler
function Quest_Engine_Demo:killTalrus(pTarget, pPlayer)
	if pPlayer == nil or pTarget == nil then --validate data
		return 0
	end
	local target = LuaSceneObject(pTarget)
	local tTarget = target:getTemplateObjectPath() --get killed targets iff
	if tTarget == "immature_tulrus.iff" then --check if the iff of creature killed matches required iff

---------( TEST GROUP CODE )
		--wp{ wpPlanet[1], wpName[2], wpX[3], wpY[4], wpColor[5], wpGroupID[6], SuiMessage[7]}

		--build update tables
		local wpStart = { "mustafar", "kill Immature Tulrus ", 1158, -46, WAYPOINTYELLOW, 128} --waypoint for kill updates
		local wpEnd = {"mustafar", "Return to Huntsman", 1105, -185, WAYPOINTYELLOW, 128, "Quest Completed..\n Return to the Huntsman."} --waypoint for complete update
		local qStart = 16 --quest slayer start state
		local qEnd = 21 --quest slayer end state (5 kills)
		local qString = "Quest_Engine_Demo" --quest string

		bf_tools:groupSlayerUpdate( pPlayer, qStart, qEnd, qString, wpStart, wpEnd, nil) --update group slayer states
	end
	return 0
end

--kill 15  talrus matriarch observer handler
function Quest_Engine_Demo:killTulrusFem(pTarget, pPlayer)
	if pPlayer == nil or pTarget == nil then 
		return 0
	end
	local strP = (tostring(pPlayer).."Quest_Engine_Demo".."status")
	if readData(strP) ~= 1 then
		dropObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "killTulrusFem", pTarget)
		return 0
	else
		local wpStart = { "mustafar", "Defend the Camp ", 1108, -184, WAYPOINTYELLOW, 128}
		local wpEnd = {"mustafar", "Return to Huntsman", 1105, -185, WAYPOINTYELLOW, 128, "Quest Completed..\n Return to the Huntsman."}
		bf_tools:groupSlayerUpdate( pPlayer, 26, 32, "Quest_Engine_Demo", wpStart, wpEnd, nil) --update group slayer states-- (15 kills)
	end
	dropObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "killTulrusFem", pTarget)
	return 0
end

--kill 20 talrus matriarch observer handler
function Quest_Engine_Demo:killTulrusFemTwo(pTarget, pPlayer)

	if pPlayer == nil or pTarget == nil then 
		return 0
	end--[[
	local wpStart = { "mustafar", "Attack the Matriarchs ", 1108, -184, WAYPOINTYELLOW, 128}
	local wpEnd = {"mustafar", "Return to Huntsman", 1105, -185, WAYPOINTYELLOW, 128, "Quest Completed..\n Return to the Huntsman."}
	bf_tools:groupSlayerUpdate( pPlayer, 26, 32, "Quest_Engine_Demo", wpStart, wpEnd, nil) --update group slayer states-- (20 kills)
	]]
	dropObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "killTulrusFem", pTarget)
	return 0
end

--clicky nest one observer handler
function Quest_Engine_Demo:eggOne(pPlayer)
	bf_tools:reward( pPlayer, "update", 23, "Quest_Engine_Demo", "Tulrus eggs FOUND!") --pop-up update
	bf_tools:addWaypointSpecial(pPlayer, false, "mustafar", "Retrieve Eggs 1 of 3", "", 1059, -393, WAYPOINTYELLOW, true, true, 128)--wp update
	if math.random(10) > 6 then --40% chance to spawn protector
		rspawnMobile ("mustafar","musty_tulrus_quest",-1, 991, 120, -336, math.rad(360), 0, 5, "")--spawn protector
	end
	return 0
end

--clicky nest two observer handler
function Quest_Engine_Demo:eggTwo(pPlayer)
	bf_tools:reward( pPlayer, "update", 24, "Quest_Engine_Demo", "Tulrus eggs FOUND!")
	bf_tools:addWaypointSpecial(pPlayer, false, "mustafar", "Retrieve Eggs 2 of 3", "", 1369, -285, WAYPOINTYELLOW, true, true, 128)
	if math.random(10) > 6 then
		rspawnMobile ("mustafar","musty_tulrus_quest",-1, 1059, 105, -393, math.rad(360), 0, 5, "")
	end	
	return 0
end

--clicky nest three observer handler
function Quest_Engine_Demo:eggThree(pPlayer)
	bf_tools:reward( pPlayer, "update", 25, "Quest_Engine_Demo", "Tulrus eggs FOUND!")
	bf_tools:addWaypointSpecial(pPlayer,false,"mustafar", "Return Eggs to Huntsman", "", 1105, -185, WAYPOINTYELLOW, true, true, 128)
	if math.random(10) > 6 then
		rspawnMobile ("mustafar","musty_tulrus_quest",-1, 1369, 107, -285, math.rad(360), 0, 5, "")
	end	
	return 0
end

--defend camp failed
function Quest_Engine_Demo:defendCampFailed(pPlayer)
	bf_tools:reward( pPlayer, "update", 26, "Quest_Engine_Demo", "Mission -FAILED-\n\n Return to the Huntsman.")
	bf_tools:addWaypointSpecial(pPlayer,false,"mustafar", "Assist the camp", "", 1105, -185, WAYPOINTYELLOW, true, true, 128)
	dropObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "defendCampFailed", pPlayer)
	local strP = (tostring(pPlayer).."Quest_Engine_Demo".."status")
	writeData(strP,2)
	return 0
end

function Quest_Engine_Demo:resetCamp(oNpc)
	--print("camp reset")
	writeData("q8".."Quest_Engine_Demo".."underAttack",0)
	return 0
end

--[MUSTY MISION GIVER ONE]
-----------------------------------------------(NEXT CONVO HANDLER) 								-- (this code belongs soley to BloodfinEMU)
Quest_Engine_Demo_convo_handler = Object:new { questString = "Quest_Engine_Demo"
}
		
function Quest_Engine_Demo_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	local questString = self.questString
	local triggerTable = {
		[1] = "clicky_one", --player found and radialed the clicky
		[2] = "incomplete_clicky_two", --player has not yet collected the second clicky	
		[3] = "complete_clicky_two", --player radialed the second clicky
		[4] = "quest_two_incomplete", --player has not yet visited the tracker
		[5] = "quest_two_complete", --player has visited the tracker
		[6] = "quest_two_success", --player returned the correct info
		[7] = "quest_three_start", --player has accepted the first reward (lava skiff)
		[8] = "quest_three_incomplete", --player has yet to visit plains and retrieve evidence
		[9] = "quest_three_complete", --player has visited plains and retrieved evidence
		[10] = "quest_four_start", --player has accepted the second reward (?item?)
		[11] = "quest_four_incomplete", --player has yet to visit plains and face malfosa
		[12] = "quest_four_complete", --player has visited plains and defeated malfosa
		[13] = "quest_five_start", --player has accepted the third reward (?item?)
		[14] = "quest_five_incomplete", --player has yet to visit talrus grounds explorer
		[15] = "quest_five_complete", --player has visited the explorer
		[16] = "quest_five_incomplete", --player has accepted the sixth quest
	} 
	return bf_tools_convo_handler:dynamic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption, triggerTable, questString)
end

-----------------------------------------------(SCREEN HANDLER)									-- (this code belongs soley to BloodfinEMU)
function Quest_Engine_Demo_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local table = {
-- necessary values:
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["questString"] = self.questString,
	["npc"] = LuaCreatureObject(conversingNPC),
	["reward"] = "object/tangible/deed/vehicle_deed/landspeeder_lava_skiff_deed.iff", --int(rebFaction),int(impFaction),int(credits),iff(item),screenName(custom)
	["reward_type"] = "item", -- Types: rebFaction, impFaction, credits, item, custom (for custom reward is set to "screenName")
-- Editable values:
	["first_screen"] = function(table)
	if table.creature:getFirstName() == "Mindsoft" or table.creature:getFirstName() == "Nexxus" then return ("mindsoft") end
	 end,
	["clicky_two_start"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 2 )
		bf_tools:addWaypointSpecial(table.player,false,"mustafar", "Lost Datapad", "", -313, -1666, WAYPOINTYELLOW, true, true, 128)end,
	["quest_two_start"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 4 )
		bf_tools:addWaypointSpecial(table.player,false,"mustafar", "Find Explorer", "", -151, -1017, WAYPOINTYELLOW, true, true, 128)end,
	["quest_two_incorrect"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 4 )
		bf_tools:addWaypointSpecial(table.player,false,"mustafar", "Return to Explorer", "", -151, -1017, WAYPOINTYELLOW, true, true, 128)end,
	["quest_two_correct"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 6 )end,
	["reward_one_get"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 7 )--rState[1]
		local reward = bf_tools:reward( table.player, "item", table.reward, nil, nil )
		LuaSceneObject(reward):setCustomObjectName("Lava Skiff Deed")end, --give lava-skiff
	["quest_three_start"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 8 )
		bf_tools:addWaypointSpecial(table.player,false,"mustafar", "Get Evidence", "", -255, -942, WAYPOINTYELLOW, true, true, 128)end,
	["quest_three_incomplete"] = function(table)
		if bf_tools:item_Purchase( table.player, nil, 5, "object/tangible/mindsoft/quest/musty_quest_evidence.iff" ) then
			bf_tools:resetQuest( table.creature, table.questString, 9 )
			return "quest_three_complete"
		end end,
	["reward_two_get"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 10 )--rState[2]
		bf_tools:reward( table.player, "item", "object/tangible/dungeon/chemical_storage.iff", nil, nil )end, --Give chem storage
	["quest_four_start"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 11 )
		bf_tools:addWaypointSpecial(table.player,false,"mustafar", "Stop creature attack", "", 264, 2652, WAYPOINTYELLOW, true, true, 128)end,
	["reward_three_get"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 13 )
		bf_tools:reward( table.player, "item", "object/tangible/furniture/all/frn_all_gaming_kiosk_s01.iff", nil, nil )end, --Give game kiosk
	["quest_five_start"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 14 )
		bf_tools:addWaypointSpecial(table.player,false,"mustafar", "Find Huntsman", "", 1105, -185, WAYPOINTYELLOW, true, true, 128)end,
	["reset_quest"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 0 )
		bf_tools:addWaypointSpecial(table.player,true,128)end,--clear all 128 waypoints
	["testStart"] = function(table)
		local qStr = "Quest_Engine_Demo"
		local qMsg = "Test Sequence Initiated:\n\nYou may now start the Mustafar Main Quest-Line!"
		bf_tools:rewardGroupAll( table.player, "screenplay", 1, qStr, {nil,qStr,qMsg,"mustafar","Goto to Analyst",363,-1377,WAYPOINTYELLOW,128}) end,
	["testReset"] = function(table) bf_tools:rewardGroupAll( table.player, "resetQuest", table.questString, 128 ) end,

	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, table, table.questString)
end

--[MUSTY MISSION GIVER TWO]
-----------------------------------------------(NEXT CONVO HANDLER) 								-- (this code belongs soley to BloodfinEMU)
musty_mission_giver_two_convo_handler = Object:new { questString = "Quest_Engine_Demo"
}
		
function musty_mission_giver_two_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	local questString = self.questString
	local triggerTable = {
		[4] = "next_screen", --player has not yet visited the tracker
		[5] = "complete", --player has visited the tracker
		[6] = "banter_quest_one_B", --player returned the correct info
		[14] = "banter_quest_one_C", --player has yet to visit plains and retrieve evidence
	} 
	return bf_tools_convo_handler:dynamic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption, triggerTable, questString)
end

-----------------------------------------------(SCREEN HANDLER)									-- (this code belongs soley to BloodfinEMU)
function musty_mission_giver_two_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local table = {
-- necessary values:
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["questString"] = self.questString,
	["npc"] = LuaCreatureObject(conversingNPC),
-- Editable values:
	["option_two"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 5 )
		bf_tools:addWaypointSpecial(table.player,false,"mustafar", "Return to Analyst", "", 363, -1377, WAYPOINTYELLOW, true, true, 128)end,
	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, table, table.questString)
end


--[MUSTY MISSION GIVER THREE]
-----------------------------------------------(NEXT CONVO HANDLER) 								-- (this code belongs soley to BloodfinEMU)
musty_mission_giver_three_convo_handler = Object:new { questString = "Quest_Engine_Demo"
}
		
function musty_mission_giver_three_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	local questString = self.questString
	local triggerTable = {
		[14] = "next_screen", --player has quest for this npc
		[15] = "quest_five_complete", --player has visited the explorer
		[16] = "quest_six_incomplete", --player has yet to kill 5 talrus
		[21] = "quest_six_complete", --player has killed 5 talrus
		[22] = "quest_seven_incomplete", --player has started quest 7
		[25] = "quest_seven_complete", --player has finished quest 7
		[26] = "quest_eight_incomplete", --player has started quest 7
		[32] = "quest_eight_complete", --player has started quest 7
		[33] = "quest_nine_incomplete", --player has started quest 7
	} 
	return bf_tools_convo_handler:dynamic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption, triggerTable, questString)
end

-----------------------------------------------(SCREEN HANDLER)									-- (this code belongs soley to BloodfinEMU)
function musty_mission_giver_three_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local table = {
-- necessary values:
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["questString"] = self.questString,
	["npc"] = LuaCreatureObject(conversingNPC),
-- Editable values:
	["quest_five_end"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 15 )end,
	["quest_six_start"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 16 )
		dropObserver(KILLEDCREATURE, "Quest_Engine_Demo", "killTalrus", table.player)
		bf_tools:addWaypointSpecial(table.player,false,"mustafar", "Kill Immature Tulrus", "", 1158, -46, WAYPOINTYELLOW, true, true, 128)
		end,
	["quest_seven_start"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 22 )
		bf_tools:addWaypointSpecial(table.player,false,"mustafar", "Find Tulrus Eggs", "", 991, -336, WAYPOINTYELLOW, true, true, 128)
		dropObserver(KILLEDCREATURE, "Quest_Engine_Demo", "killTalrus", table.player) end,
	["quest_eight_start"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 26 )
		bf_tools:reward( table.player, "item", "object/tangible/camp/camp_chair_s1.iff", nil, nil ) --Give game kiosk
		bf_tools:addWaypointSpecial(table.player,false,"mustafar", "Defend the camp!", "", 1108, -185, WAYPOINTYELLOW, true, true, 128)
		end,
	["defend_Start"] = function(tbl) local str = ("q8"..tbl.questString.."underAttack")
		local strP = (tostring(tbl.player)..tbl.questString.."status")
		if readData(str) == 0 then --or readData(strP) ~= 1
			writeData(str, 1)--set player to defender state
			writeData(strP, 1)
		createEvent(60000, tbl.questString, "resetCamp", tbl.npc)
		else
			return "campUnderAttack"
		end
		local sTbl = lspawnMobile("mustafar", {"musty_matriarch_tulrus"},-1, 1108, 88, -184, 90, 0, 40, math.random(2,4),"" )
		createObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "defendCampFailed", tbl.player)
		foreach(sTbl,function(pObj) createObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "killTulrusFem", pObj) 
			LuaCreatureObject(pObj):engageCombat(tbl.player)
			createEvent(120000, "bf_tools", "destroy", pObj)
		end) end,
	["quest_nine_start"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 33 )
		bf_tools:reward( table.player, "credits",math.random(15000,25000)) --award random 15k-25k cash credits 
		local strP = (tostring(table.player)..table.questString.."status")
		writeData(strP, 0)
		dropObserver(OBJECTDESTRUCTION, "Quest_Engine_Demo", "defendCampFailed", table.player)
		bf_tools:addWaypointSpecial(table.player,true,128)--clear all 128 waypoints
		end,
	["quest_nine_complete"] = function(table) bf_tools:resetQuest( table.creature, table.questString, 33 ) end,
	["reset"] = function(table) bf_tools:resetQuest( table.creature, table.questString)
		dropObserver(KILLEDCREATURE, "Quest_Engine_Demo", "killTalrus", table.player)
		bf_tools:addWaypointSpecial(table.player,true,128)end,--clear all 128 waypoints
	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, table, table.questString)
end

-- (this code belongs soley to BloodfinEMU)											-- (this code belongs soley to BloodfinEMU)



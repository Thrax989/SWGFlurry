-- BY: Mindsoft											-- last edited: 3.22.2017	-- (this code belongs soley to BloodfinEMU)
-----------------------------------------------(SCREENPLAY)
musty_side_guardian = ScreenPlay:new { numberOfActs = 1 ,
	planet = "mustafar",
	questString = "musty_side_guardian",
	weak = "guardian_pit_droid",
	mid = "guardian_sbd",
	hard = "guardian_protector",
	slayer = "guardian_power_droid",
	info = "musty_side_guardian,Mustafar Legacy Side: Mysterious Jawa,Seek the Jawa by the Talrus Mating Grounds,mustafar,1115,-165"
}
registerScreenPlay("musty_side_guardian", true)

--Spawn Quest givers and triggers.
function musty_side_guardian:start()
	if (isZoneEnabled("mustafar")) then
		self.spawnMobiles()
		self.populate()
	end
end

function musty_side_guardian:spawnMobiles()
	rspawnMobile("mustafar", "jawa_engineer_guardian",1, 1115, 88, -179, -165, 0, 3,"" )
	return 0
end

function musty_side_guardian:populate()
	local play = musty_side_guardian
	local planet = play.planet
	local weak = play.weak
	local mid = play.mid
	local hard = play.hard
	local quest = play.questString
	local slayer = play.slayer
	local sTbl
--mysterious cave
	local cave = spawnSceneObject(planet,"object/building/general/cave_01.iff", 1051.4, 97, 4, 0, math.rad(140))
	local caveID = LuaSceneObject(cave):getObjectID()
	writeData("mustafar:legacy:mysteriousCave",caveID)
	LuaSceneObject(cave):setCustomObjectName("Mysterious Cave")

	local pCell, cellID
	pCell = BuildingObject(cave):getNamedCell("r2")
	--print("pCell:",pCell)
	if (pCell ~= nil) then
		cellID = SceneObject(pCell):getObjectID()

		--lspawnMobile(zoneName, spawnList, respawnTimer, x, z, y, heading, parentID, spawnRange, spawnCount, ai)
		spawnMobile(planet, weak, math.random(60,90), 10.7, -23.7, -26.9, 0, cellID)
		spawnMobile(planet, weak, math.random(60,90), -9.5, -30.8, -27.7, 0, cellID)
	end

	pCell = BuildingObject(cave):getNamedCell("r3")
	--print("pCell:",pCell)
	if (pCell ~= nil) then
		cellID = SceneObject(pCell):getObjectID()

		--lspawnMobile(zoneName, spawnList, respawnTimer, x, z, y, heading, parentID, spawnRange, spawnCount, ai)
		lspawnMobile(planet, {mid}, math.random(70,90),4.4, -40.7, -70.47, 0, cellID, 7, 3 ,"")
	end

	pCell = BuildingObject(cave):getNamedCell("r4")
	--print("pCell:",pCell)
	if (pCell ~= nil) then
		cellID = SceneObject(pCell):getObjectID()

		--lspawnMobile(zoneName, spawnList, respawnTimer, x, z, y, heading, parentID, spawnRange, spawnCount, ai)
		lspawnMobile(planet, {mid}, math.random(70,90),46, -47, -54.7, 0, cellID, 6, 2 ,"")

	--clicky 1 -droid frame
		local clicky = spawnSceneObject(planet,"object/tangible/component/droid/advanced_droid_frame.iff", 50,-45.8,-99.3, cellID, math.rad(0))
		LuaSceneObject(clicky):setCustomObjectName("Experimental Frame Unit")
			--(questString, functionName, testState, timer, buttonText, id, animation)
		local str = (quest..",clickyOne,1,4000,Collect Frame Unit,129")
		writeStringData("spName:"..tostring(clicky),str)
		LuaSceneObject(clicky):setObjectMenuComponent("click_menu")

	end

	pCell = BuildingObject(cave):getNamedCell("r5")
	--print("pCell:",pCell)
	if (pCell ~= nil) then
		cellID = SceneObject(pCell):getObjectID()

		--lspawnMobile(zoneName, spawnList, respawnTimer, x, z, y, heading, parentID, spawnRange, spawnCount, ai)
		lspawnMobile(planet, {weak}, math.random(60,90), -6.3, -45.3, -144.5, 0, cellID, 7, 3 ,"")
		lspawnMobile(planet, {hard}, math.random(90,180), 54.1, -54.1, -145.9, 0, cellID, 14, 2 ,"")
		--slayer: Droid Battery
		sTbl = lspawnMobile(planet, {slayer}, math.random(90,180), 50, -55, -168.7, 0, cellID, 13, 6 ,"")
		foreach(sTbl,function(pObj)createObserver(OBJECTDESTRUCTION, quest, "killBattery", pObj) end)

	--clicky 2 -droid brain
		local clicky = spawnSceneObject(planet,"object/tangible/component/droid/droid_brain.iff", 68.9,-57.6,-178.2, cellID, math.rad(0))
		LuaSceneObject(clicky):setCustomObjectName("Experimental Droid Brain")
		local str = (quest..",clickyTwo,2,4000,Collect Droid Brain,129")
		writeStringData("spName:"..tostring(clicky),str)
		LuaSceneObject(clicky):setObjectMenuComponent("click_menu")

	end

	pCell = BuildingObject(cave):getNamedCell("r7")
	--print("pCell:",pCell)
	if (pCell ~= nil) then
		cellID = SceneObject(pCell):getObjectID()

		--lspawnMobile(zoneName, spawnList, respawnTimer, x, z, y, heading, parentID, spawnRange, spawnCount, ai)
		lspawnMobile(planet, {"armored_dewback_overlord"}, 360, -4.5, -64, -234.4, 0, cellID, 1, 1 ,"")
	end

	pCell = BuildingObject(cave):getNamedCell("r8")
	--print("pCell:",pCell)
	if (pCell ~= nil) then
		cellID = SceneObject(pCell):getObjectID()

		--lspawnMobile(zoneName, spawnList, respawnTimer, x, z, y, heading, parentID, spawnRange, spawnCount, ai)
		lspawnMobile(planet, {weak}, math.random(60,90), -96.6, -73.5, -168.9, 0, cellID, 5, 3 ,"")
		lspawnMobile(planet, {hard}, math.random(90,180), -61.3, -70.3, -183.5, 0, cellID, 10, 2 ,"")
		lspawnMobile(planet, {weak}, math.random(60,90), -100.4, -70.2, -123.7, 0, cellID, 10, 4 ,"")

	--clicky 3 -droid memory module
		local clicky = spawnSceneObject(planet,"object/tangible/component/droid/data_storage_module_6.iff", -70.9,-70.2,-149.9, cellID, math.rad(0))
		LuaSceneObject(clicky):setCustomObjectName("Experimental Droid Memory")
		local str = (quest..",clickyThree,3,4000,Collect Droid Memory,129")
		writeStringData("spName:"..tostring(clicky),str)
		LuaSceneObject(clicky):setObjectMenuComponent("click_menu")

	--clicky 4 -droid memory module
		clicky = spawnSceneObject(planet,"object/tangible/component/droid/armor_module_6.iff", -80.7,-70.3,-123.8, cellID, math.rad(0))
		LuaSceneObject(clicky):setCustomObjectName("Experimental Droid Armor")
		str = (quest..",clickyFour,4,4000,Collect Droid Armor,129")
		writeStringData("spName:"..tostring(clicky),str)
		LuaSceneObject(clicky):setObjectMenuComponent("click_menu")
	end

	pCell = BuildingObject(cave):getNamedCell("r9")
	--print("pCell:",pCell)
	if (pCell ~= nil) then
		cellID = SceneObject(pCell):getObjectID()

		lspawnMobile(planet, {mid}, math.random(80,120), -51.6, -68.8, -98.6, 0, cellID, 14, 4 ,"")
		--slayers: Droid Battery
		sTbl = lspawnMobile(planet, {slayer}, math.random(80,120), -27.7, -69.5, -103.4, 0, cellID, 12, 5 ,"")
		foreach(sTbl,function(pObj)createObserver(OBJECTDESTRUCTION, quest, "killBattery", pObj) end)

	--clicky 5 -droid memory module
		local clicky = spawnSceneObject(planet,"object/tangible/component/droid/droid_motive_system_advanced.iff", -6,-68.3,-94.5, cellID, math.rad(0))
		LuaSceneObject(clicky):setCustomObjectName("Experimental Motive System")
		local str = (quest..",clickyFive,5,4000,Collect Motive System,129")
		writeStringData("spName:"..tostring(clicky),str)
		LuaSceneObject(clicky):setObjectMenuComponent("click_menu")

	end

	pCell = BuildingObject(cave):getNamedCell("r11")
	--print("pCell:",pCell)
	if (pCell ~= nil) then
		cellID = SceneObject(pCell):getObjectID()

	--clicky 6 -Relic Computer Core
		local clicky = spawnSceneObject(planet,"object/tangible/dungeon/computer_mainframe.iff", -96.6,-101,-91.6, cellID, math.rad(-90))
		LuaSceneObject(clicky):setCustomObjectName("Relic Computer Core")
		local str = (quest..",clickySix,33,1,Insert Schematic,129,fiddle")
		writeStringData("spName:"..tostring(clicky),str)
		LuaSceneObject(clicky):setObjectMenuComponent("click_menu")
	--clicky 7 -Relic Computer Core Output
		clicky = spawnSceneObject(planet,"object/tangible/dungeon/computer_mainframe.iff", -95.2,-101,-91.6, cellID, math.rad(-90))
		LuaSceneObject(clicky):setCustomObjectName("Schematic Output")
		str = (quest..",clickySeven,34,5000,Retrieve Schematic,129,fiddle")
		writeStringData("spName:"..tostring(clicky),str)
		LuaSceneObject(clicky):setObjectMenuComponent("click_menu")
	end

	return 0
end
	


--[observers] Place quest specific observer events here
function musty_side_guardian:clickyOne(pPlayer)
	--print("Guardian sidequest: clickyOne object has been used")
	bf_tools:reward( pPlayer, "update", 2, self.questString, "Droid Chasis Found!\n You now need to find the Brain for it.") --pop-up update
	bf_tools:addWaypointSpecial(pPlayer, false, self.planet, "Get Droid Brain", "", 1063, -10, WAYPOINTORANGE, true, true, 129)
end

function musty_side_guardian:clickyTwo(pPlayer)
	--print("Guardian sidequest: clickyTwo object has been used")
	bf_tools:reward( pPlayer, "update", 3, self.questString, "Droid Brain Found!\n You now need to find the Memory for it.") --pop-up update
	bf_tools:addWaypointSpecial(pPlayer, false, self.planet, "Get Droid Memory", "", 1063, -10, WAYPOINTORANGE, true, true, 129)
end

function musty_side_guardian:clickyThree(pPlayer)
	bf_tools:reward( pPlayer, "update", 4, self.questString, "Droid Memory Found!\n You now need to find the Armor for it.") --pop-up update
	bf_tools:addWaypointSpecial(pPlayer, false, self.planet, "Get Droid Armor", "", 1063, -10, WAYPOINTORANGE, true, true, 129)
end

function musty_side_guardian:clickyFour(pPlayer)
	bf_tools:reward( pPlayer, "update", 5, self.questString, "Droid Armor Found!\n You now need to find the Motive System for it.") --pop-up update
	bf_tools:addWaypointSpecial(pPlayer, false, self.planet, "Get Droid Motive System", "", 1063, -10, WAYPOINTORANGE, true, true, 129)
end

function musty_side_guardian:clickyFive(pPlayer)
	bf_tools:reward( pPlayer, "update", 6, self.questString, "Droid Motive System Found!\n Great! Return to me with the parts.") --pop-up update
	bf_tools:addWaypointSpecial(pPlayer, false, self.planet, "Return to the Engineer", "", 1115, -178, WAYPOINTORANGE, true, true, 129)
end

function musty_side_guardian:clickySix(pPlayer)
	if readData("MustafarGuardianPC:") ~= 0 then
		LuaCreatureObject(pPlayer):sendSystemMessage("This Object is Busy at this time")
		return 0
	end
	writeData("MustafarGuardianPC:",1) --lock pc
	bf_tools:reward( pPlayer, "update", 33, self.questString, "Schematic Entered..calculating..\n\n *ALERT*\n  Biological Intruder!..") --pop-up update
	local cellID = CreatureObject(pPlayer):getParentID()
	local pObj = lspawnMobile("mustafar", {"guardian_overlord"}, 0, -91.2, -101, -110.9, 2, cellID, 1, 1 ,"")
	createObserver(OBJECTDESTRUCTION, "musty_side_guardian", "killedBoss", pObj[1])
	createObserver(DAMAGERECEIVED,"musty_side_guardian","damagedBoss", pObj[1])
	createEvent(1200000, "musty_side_guardian", "unlockPC", pObj[1])
	spatialChat(pObj[1], "Prototype Unit\n  Initiated..")
end

function musty_side_guardian:clickySeven(pPlayer)
	bf_tools:reward( pPlayer, "update", 35, self.questString, "Schematic Retrieved!\n Return to the Mysterious Engineer.") --pop-up update
	bf_tools:addWaypointSpecial(pPlayer, false, self.planet, "Return to the Engineer", "", 1115, -178, WAYPOINTORANGE, true, true, 129)
end

function musty_side_guardian:killBattery(pTarget, pPlayer)
	if pPlayer == nil or pTarget == nil then --validate data
		return 0
	end
	--wp{ wpPlanet[1], wpName[2], wpX[3], wpY[4], wpColor[5], wpGroupID[6], SuiMessage[7]}
	local wpStart = { "mustafar", "Get Droid Batteries ", 1063, -10, WAYPOINTORANGE, 129}
	local wpEnd = {"mustafar", "Return to Engineer", 1115, -178, WAYPOINTORANGE, 129, "That should be plenty.\n Return them to me as soon as you can."}
	local qStart = 7 --quest slayer start state
	local qEnd = 32 --quest slayer end state (5 kills)
	local qString = self.questString --quest string
	bf_tools:groupSlayerUpdate( pPlayer, qStart, qEnd, qString, wpStart, wpEnd, nil) --update group slayer states
	return 0
end


function musty_side_guardian:endWait(pPlayer)
	bf_tools:reward( pPlayer, "update", 37, self.questString, "There you go all finished!\n Come pick up your schematic.") --pop-up update
	bf_tools:addWaypointSpecial(pPlayer, false, self.planet, "*Retrieve Reward*", "", 1115, -178, WAYPOINTORANGE, true, true, 129)
end

function musty_side_guardian:killedBoss(pBoss, pPlayer)
	LuaSceneObject(pBoss):cancelPendingTask("musty_side_guardian","healBoss")
	local qStr = self.questString
	local qMsg = "Prototype Destroyed!..\n\n You may now safely retrieve the schematic."
	bf_tools:rewardGroupAll( pPlayer, "screenplay", 34, qStr, {33,qStr,qMsg,"mustafar","Retrieve the Schematic",1063,-10,WAYPOINTORANGE,129})
	return 0
end

function musty_side_guardian:killedHealer(pBoss, pPlayer)
	local state = readData("MustafarGuardianPC:")
	writeData("MustafarGuardianPC:",state+1)
	return 0
end

function musty_side_guardian:damagedBoss(pBoss, pPlayer)
	local boss = LuaCreatureObject(pBoss)
	local health = boss:getHAM(0)
	local action = boss:getHAM(3)
	local mind = boss:getHAM(6)
	local maxHealth = boss:getMaxHAM(0)
	local maxAction = boss:getMaxHAM(3)
	local maxMind = boss:getMaxHAM(6)
	if (readData("MustafarGuardianPC:") == 1) and ((health <= (maxHealth *0.9)) or (action <= (maxAction * 0.9)) or (mind <= (maxMind *0.9))) then
		writeData("MustafarGuardianPC:",2)
		spatialChat(pBoss, "Replicating...")
		local addList = {"guardian_protector"}
		local sList = musty_side_guardian:spawnAdds(pBoss, addList, 8, 2)
		foreach (sList , function(pSpawn) spatialChat(pSpawn, "Enemy Identified..\nEngaging...")
			local target = musty_side_guardian:getTarget(pPlayer)		
			LuaCreatureObject(pSpawn):engageCombat(target) 
			createEvent(1200000, "bf_tools", "destroy", pSpawn) end)
	elseif (readData("MustafarGuardianPC:") == 2) and ((health <= (maxHealth *0.6)) or (action <= (maxAction * 0.6)) or (mind <= (maxMind *0.6))) then
		writeData("MustafarGuardianPC:",3)
		spatialChat(pBoss, "Initiating mass replication...")
		local addList = {"guardian_pit_droid","guardian_protector"}
		local sList = musty_side_guardian:spawnAdds(pBoss, addList, 8, 3)
		foreach (sList , function(pSpawn) spatialChat(pSpawn, "Target Spotted!")
			createEvent(1200000, "bf_tools", "destroy", pSpawn)
			local target = musty_side_guardian:getTarget(pPlayer)		
			LuaCreatureObject(pSpawn):engageCombat(target) end)
	elseif (readData("MustafarGuardianPC:") == 3) and ((health <= (maxHealth *0.3)) or (action <= (maxAction * 0.3)) or (mind <= (maxMind *0.3))) then
		writeData("MustafarGuardianPC:",4)
		spatialChat(pBoss, "Damaged..Alerting Dr. Nautica")
		local addList = {"guardian_power_droid"}
		local sList = musty_side_guardian:spawnAdds(pBoss, addList, 10, 6)
		foreach (sList , function(pSpawn) spatialChat(pSpawn, "Recharging...")
			local target = musty_side_guardian:getTarget(pPlayer)		 
			LuaCreatureObject(pSpawn):engageCombat(target) 
			createObserver(OBJECTDESTRUCTION, "musty_side_guardian", "killedHealer", pSpawn)
			createEvent(1200000, "bf_tools", "destroy", pSpawn) end)
		LuaSceneObject(pBoss):addPendingTask(1000,"musty_side_guardian","healBoss")
	end

	return 0
end

function musty_side_guardian:spawnAdds(pBoss, addList,range, count, lifespan)
	local sObject = LuaSceneObject(pBoss)
	local sOBX = sObject:getPositionX()
	local sOBZ = sObject:getPositionZ()
	local sOBY = sObject:getPositionY()
	local cellID = sObject:getParentID()
	local zone = sObject:getZoneName()
	local sList = lspawnMobile(zone, addList, 0, sOBX, sOBZ, sOBY,0, cellID, 5, count ,"")
	return sList
end

function musty_side_guardian:getTarget(player)
	local pObj = LuaCreatureObject(player)
	local newTable = {}
	if (pObj:isGrouped()) then
		local gSize = pObj:getGroupSize()
		for i = 0, gSize-1 do --for each group member
			local groupMember = pObj:getGroupMember(i) --get next group member
			if (groupMember ~= nil) and pObj:isInRangeWithObject(groupMember,70) then
				table.insert(newTable, groupMember)
			end
		end
	else
		return player
	end
	local target = math.random(1,#newTable)
	return newTable[target]
end

function musty_side_guardian:healBoss(pBoss)
	LuaSceneObject(pBoss):cancelPendingTask("musty_side_guardian","healBoss")
	local state = readData("MustafarGuardianPC:")
	if state < 10 then --Unlock pc
		local heal = (10 - state)*20000
		local boss = LuaCreatureObject(pBoss)
		CreatureObject(pBoss):healDamage(heal, 0)
		CreatureObject(pBoss):healDamage(heal, 3)
		CreatureObject(pBoss):healDamage(heal, 6)
		spatialChat(pBoss, "Recharging "..tostring(heal).." power...")
		LuaSceneObject(pBoss):addPendingTask(10000,"musty_side_guardian","healBoss")
		boss:playEffect("clienteffect/healing_healdamage.cef", "")
	end
	return 0
end

function musty_side_guardian:unlockPC(pBoss)
	local boss = LuaCreatureObject(pBoss)
	LuaSceneObject(pBoss):cancelPendingTask("musty_side_guardian","healBoss")
	forcePeace(pBoss)
	forcePeace(pBoss)
	writeData("MustafarGuardianPC:",0) --Unlock pc
	bf_tools:destroy(pBoss)
	return 0
end

function musty_side_guardian:sideCleanup(pPlayer)
	bf_tools:sideClear(pPlayer)
	return 0
end
--[notes]

	--[[
		BY: Mindsoft
		For: Guardian Droid MK2 Schematic Introduction to the game.
		Description: Back and forth quest with clickies and slayer, boss has
			3 waves the third heals until they are all destroyed.
	--]]


--[Handlers]

--Mysterious Jawa Engineer
-----------------------------------------------(NEXT CONVO HANDLER)
musty_side_guardian_convo_handler = Object:new {
	questString = "musty_side_guardian"
}
function musty_side_guardian_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	local questString = self.questString
	local triggerTable = {
		[1] = "quest_one_incomplete",
		[6] = "quest_one_complete",
		[7] = "quest_two_incomplete",--(accecpt quest 2) 8-27(slayer Kills for Powercells) 
		[32] = "quest_two_complete",
		[33] = "quest_three_incomplete",-- 34(defeated Boss),35(got Schematic out of Computer)
		[35] = "quest_three_complete",
		[36] = "quest_three_waiting",
		[37] = "quest_waited",--event timer triggers state 32
		[38] = "quest_complete",
	} 
	return bf_tools_convo_handler:dynamic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption, triggerTable, questString)
end

-----------------------------------------------(SCREEN HANDLER)
function musty_side_guardian_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local quest = {
-- necessary values: --DO NOT adjust this section
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["questString"] = self.questString,
	["npc"] = LuaCreatureObject(conversingNPC),
-- Editable values:
	["first_screen"] = function(tbl) if tbl.creature:getScreenPlayState("Quest_Engine_Demo") >= 26 then
		if tbl.creature:getScreenPlayState("Quest_Engine_Demo") >= 32 then return ("next_screen")
		else return ("help") end end end,
	["quest_one_start"] = function(tbl) print("check"); local test = bf_tools:sideSet(tbl.player,tbl.questString)
		if test == false then return "rejected" end
		bf_tools:resetQuest(tbl.creature, tbl.questString,1)
		bf_tools:addWaypointSpecial(tbl.player, false, "mustafar", "Get Droid Chasis", "", 1063, -10, WAYPOINTORANGE, true, true, 129) end,
	["quest_two_start"] = function(tbl)bf_tools:resetQuest(tbl.creature, tbl.questString,7)
		bf_tools:addWaypointSpecial(tbl.player, false, "mustafar", "Get Powercells", "", 1063, -10, WAYPOINTORANGE, true, true, 129) end,
	["quest_three_start"] = function(tbl)bf_tools:resetQuest(tbl.creature, tbl.questString,33)
		bf_tools:addWaypointSpecial(tbl.player, false, "mustafar", "Use Computer", "", 1063, -10, WAYPOINTORANGE, true, true, 129) end,
	["quest_three_wait"] = function(tbl) bf_tools:resetQuest(tbl.creature, tbl.questString,36)
		bf_tools:addWaypointSpecial(tbl.player,true,129)
		createEvent((math.random(20,90)*1000), tbl.questString, "endWait", tbl.player) end,
	["quest_reward"] = function(tbl)bf_tools:resetQuest(tbl.creature, tbl.questString,38)
		local item = bf_tools:reward( tbl.player, "item", "object/tangible/loot/loot_schematic/guardian_droid_schematic.iff", -1, true )
		LuaSceneObject(item):setCustomObjectName("Guardian Droid MKII Schematic") --give guardian droid schematic
		bf_tools:sideClear(tbl.player)
		bf_tools:addWaypointSpecial(tbl.player,true,129) end,
	["reset"] = function(tbl)bf_tools:resetQuest(tbl.creature, tbl.questString)
		bf_tools:sideClear(tbl.player)
		bf_tools:addWaypointSpecial(tbl.player,true,129) end,
	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest )
end

--[special functions] custom functions for this screenplay


-- (this code belongs soley to BloodfinEMU)

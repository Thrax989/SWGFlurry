-- BY: Mindsoft											-- last edited: 2.27.2017	-- (this code belongs soley to BloodfinEMU)
------------------------------------------------(GENERIC NEXT CONVO HANDLER)
bf_tools_convo_handler = Object:new {}


		--Generic next-screen handler for non-screenplay-states
function bf_tools_convo_handler:generic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	local creature = LuaCreatureObject(conversingPlayer)
	local convosession = creature:getConversationSession()
	local conversation = LuaConversationTemplate(conversationTemplate)
	local lastConversationScreen = nil
	local nextConversationScreen
	if ( conversation ~= nil ) then
		if ( convosession ~= nil ) then
			--print("convosession good")
			local session = LuaConversationSession(convosession)
			if ( session ~= nil ) then
				lastConversationScreen = session:getLastConversationScreen()
			end
		end
		-- if there was no previous screen in this conversation set next screen to first screen.
		if ( lastConversationScreen == nil ) then
			nextConversationScreen = conversation:getScreen("first_screen")
		else -- if there was a previous screen in the conversation set next screen to its option link.
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
			nextConversationScreen = conversation:getScreen(optionLink)
		end
	end
	return nextConversationScreen
end

------------------------------------------------(DYNAMIC NEXT CONVO HANDLER)							-- (this code belongs soley to BloodfinEMU)
		--Dynamic next-screen handler for screenplay-states
function bf_tools_convo_handler:dynamic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption, triggerTable, questString)
-- Get conversation and player info.
	local creature = LuaCreatureObject(conversingPlayer)
	local convosession = creature:getConversationSession()
	local conversation = LuaConversationTemplate(conversationTemplate)
	local lastConversationScreen = nil
	local nextConversationScreen
	--test for valid converstation
	if ( conversation ~= nil ) then
		-- test for valid convosession
		if ( convosession ~= nil ) then
			local session = LuaConversationSession(convosession)
			-- test for a valid session
			if ( session ~= nil ) then
				-- retrieve last conversation screen from the session
				lastConversationScreen = session:getLastConversationScreen()
			end
		end
		-- if there was no previous screen in this conversation.
		if ( lastConversationScreen == nil ) then
			-- if the player has accepted the quest.
			nextConversationScreen = conversation:getScreen("first_screen")
			if questString ~= nil then
			--(PASSED TABLE REVERSE SORT)
				local a = {}
				for n in pairs(triggerTable) do
					table.insert(a, n)
				end
				table.sort(a)
				local state = creature:getScreenPlayState( questString )
				--print("state",state)
				for i,trigger in ripairs(a) do
			--(PASSED TABLE TEST)
					--if state == trigger or state > trigger then
					if state == trigger or ((creature:hasScreenPlayState( trigger, questString ) ) and not (state < trigger)) or state > trigger then
						local  screen = triggerTable[trigger]
						nextConversationScreen = conversation:getScreen(screen)
						break --break if trigger found & return passed screen
					end
				end
			end
		else -- if there was a previous screen in the conversation
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
			nextConversationScreen = conversation:getScreen(optionLink)
		end
	end
	return nextConversationScreen
end


------------------------------------------------(GENERIC SCREEN HANDLER)							-- (this code belongs soley to BloodfinEMU)
--Generic run-screen-handlers for both simple and comple with screenlay-states
function bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest )
	-- Get some information about the conversation.
		local conversation = LuaConversationTemplate( conversationTemplate )
		local screen = LuaConversationScreen( conversationScreen )
		local screenID = screen:getScreenID()
		local nextConversationScreen = conversation:getScreen(screenID)
	-- Get some information about the player.
		local creature = LuaCreatureObject( conversingPlayer )
		local pInventory = creature:getSlottedObject("inventory")
		if quest then local questString = quest.questString end
	if quest ~= nil then
	--(PASSED TABLE)
		for key,value in pairs(quest) do
			if screenID == key then
				local feedback = quest[key](quest) 
				if feedback ~= nil and type(feedback) == "string" then				
					nextConversationScreen = conversation:getScreen(feedback)
				end
				break
			end
		end
	end
	--print("next screen",nextConversationScreen)
	return nextConversationScreen
end


		--Generic handler is used for processing simple conversations with no screenplay-states
function bf_tools_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	return bf_tools_convo_handler:generic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
end

function bf_tools_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, nil )
end

------------------------------(Bloodfin tools for player objects)							-- (this code belongs soley to BloodfinEMU)
bf_tools = Object:new {}

--statePlus
function bf_tools:statePlus( creature,questString )
	local state = creature:getScreenPlayState( questString )
	bf_tools:resetQuest( creature, questString, state+1 )
end


--groupSlayerUpdate
function bf_tools:groupSlayerUpdate( player, qStart, qEnd, qString, wpS, wpE,factRest)
		--print("received",pPlayer, qStart, qEnd, qString, wpS, wpE, factRest)
	if player == nil then
		return false
	end
	local memberC = LuaCreatureObject(player)
	if (memberC:isGrouped()) then
		--print("\nSlayer Group Update Started", player, qStart, qEnd, qString, wpS, wpE,factRest)
		local gSize = memberC:getGroupSize()
		for i = 0, gSize-1 do --for each group member
			local groupMember = memberC:getGroupMember(i) --get next group member
			--print("testing groupMember",groupMember,i,gSize)
			if (groupMember ~= nil) and memberC:isInRangeWithObject(groupMember,100) and (SceneObject(groupMember):isPlayerCreature()) then --validate member
				local creature = LuaCreatureObject(groupMember)
				if (factRest == nil) or (factRest =="imperial" and creature:isImperial()) or (factRest == "rebel" and creature:isRebel()) or (factRest == "neutral" and creature:isNeutral()) then
					local state = creature:getScreenPlayState(qString)

					if (state+1) == qEnd then --last kill state
						--print("slayer completed..updating")

						--sui pop-up
						local suiManager = LuaSuiManager()
						suiManager:sendMessageBox(groupMember, groupMember, "Bloodfin Quest Update:", wpE[7], "@ok", "bf_tools", "questUpdate")

						--update waypoint
						--addWaypointSpecial(pPlayer, clear, wpPlanet[1], wpName[2], wpDesc, wpX[3], wpY[4], wpColor[5], wpActive, wpNotify, wpGroupID[6])
						bf_tools:addWaypointSpecial(groupMember,false, wpE[1], wpE[2], "BF Quest",wpE[3], wpE[4], wpE[5], true, true, wpE[6])

						bf_tools:resetQuest( creature, qString, (state+1)) --increment quest

					elseif (state >= qStart) and (state < qEnd) then --slayer in progression state
						--print("slayer updating/incrementing")
						local str = wpS[2]
						local name = (str..tostring((state - qStart)+1 ).." of "..tostring(qEnd-qStart))
						creature:sendSystemMessage(str.."Updated!")
						--bf_tools:resetQuest( creature, questString, set)
						bf_tools:resetQuest( creature, qString, (state+1))
						bf_tools:addWaypointSpecial(groupMember,false, wpS[1], name, "BF Quest", wpS[3], wpS[4], wpS[5], true, true, wpS[6])
					end
				end
			end	
		end
	else --Solo Player
		--print("rewarding solo player")
		if not SceneObject(player):isPlayerCreature() then
			return false
		end
		if (factRest == nil) or (factRest =="imperial" and memberC:isImperial()) or (factRest == "rebel" and memberC:isRebel()) or (factRest == "neutral" and memberC:isNeutral()) then
			local state = memberC:getScreenPlayState(qString)

			if (state+1) == qEnd then
				--print("solo completion update")
				local suiManager = LuaSuiManager()
				suiManager:sendMessageBox(player, player, "Bloodfin Quest Update:", wpE[7], "@ok", "bf_tools", "questUpdate")
				--addWaypointSpecial(pPlayer, clear, wpPlanet[1], wpName[2], wpDesc, wpX[3], wpY[4], wpColor[5], wpActive, wpNotify, wpGroupID[6])
				bf_tools:addWaypointSpecial(player,false, wpE[1], wpE[2], "BF Quest",wpE[3], wpE[4], wpE[5], true, true, wpE[6])
				bf_tools:resetQuest( memberC, qString, (state+1))

			elseif (state >= qStart) and (state < qEnd) then
				--print("solo slayer update")
				local str = wpS[2]
				local name = (str..tostring((state - qStart)+1 ).." of "..tostring(qEnd-qStart))
				memberC:sendSystemMessage(str.."Updated!")
				bf_tools:resetQuest( memberC, qString, (state+1))
				bf_tools:addWaypointSpecial(player,false, wpS[1], name, "BF Quest", wpS[3], wpS[4], wpS[5], true, true, wpS[6])
			end
		end
	end
	return true
end


--rewardGroupAll
function bf_tools:rewardGroupAll( player, reward_type, reward, modifier, test , factRest)
	local memberC = LuaCreatureObject(player)
	if (memberC:isGrouped()) then
		--print("rewarding group all")
		local gSize = memberC:getGroupSize()
		for i = 0, gSize-1 do --for each group member
			local groupMember = memberC:getGroupMember(i) --get next group member
			--print("testing groupMember",groupMember,i,gSize)
			if (groupMember ~= nil) and memberC:isInRangeWithObject(groupMember,100) and (SceneObject(groupMember):isPlayerCreature()) then
				if (factRest == nil) or (factRest =="imperial" and memberC:isImperial()) or (factRest == "rebel" and memberC:isRebel()) or (factRest == "neutral" and memberC:isNeutral()) then	
					if reward_type == "resetQuest" then
						--print("reward group all: resetting player quest",groupMember,reward)
						bf_tools:resetQuest( LuaCreatureObject(groupMember), reward )--(pPlayer,questString,wpID)
						if modifier ~= nil then
							--print("clearing WP Group:",modifier)
							bf_tools:addWaypointSpecial(groupMember,true,modifier)--clear all 128 waypoints
						end
					-- bf_tools:reward( groupMember, reward_type, reward, modifier, test )--Give all other players reward
					elseif bf_tools:reward( groupMember, reward_type, reward, modifier, test ) then
					end
				end
			end	
		end
	else 
	-- SUI Quest Update popup.
		--print("rewarding player",reward_type)
		if not SceneObject(player):isPlayerCreature() then
			return false
		elseif reward_type == "resetQuest" then
			--print("resetting quest")
			bf_tools:resetQuest( memberC, reward )--(pPlayer,questString,wpID)
			if modifier ~= nil then
				--print("wiping wp set",modifier)
				bf_tools:addWaypointSpecial(player,true,modifier)--clear all 128 waypoints
			end

		elseif bf_tools:reward( player, reward_type, reward, modifier, test ) then
			return true
		else
			return false
		end
	end
	return true
end

--questUpdate
function bf_tools:questUpdate()--leave this for null returns on sui boxes
	return 0
end

--item_Purchase
function bf_tools:item_Purchase( pPlayer, reward, purchaseCost, test )
	local creature = LuaCreatureObject(pPlayer)
	-- Get some information about the player and it's inventory.
	local pInventory = creature:getSlottedObject("inventory")
	local inventory = LuaSceneObject(pInventory)
	local containerSize = inventory:getContainerObjectsSize()
	local itemCounter = 0
	local i = 0 

	for i = 0, containerSize - 1, 1 do
        	 local pInvObj = inventory:getContainerObject(i)
	         local InvObj = LuaSceneObject(pInvObj)
		-- Get Objectnames from Each Item and check if its the choosen Item. (This is your token for the vendor)
		if (InvObj:getTemplateObjectPath() == test) then
			itemCounter = itemCounter + 1
		end
	end
	-- required items test (returns number of test items in inventory)
	if reward == "check" then
		if itemCounter < purchaseCost then
			return false
		end
		return itemCounter
	end
         -- Insufficent Space
	if (SceneObject(pInventory):isContainerFullRecursive()) then
		creature:sendSystemMessage("You do not have enough inventory space")  
		return false
	-- Insufficent Items
	elseif itemCounter < purchaseCost then            
		creature:sendSystemMessage("You have insufficient items")
		return false
	end
	
	-- Remove Barter Items
	for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
     	    	-- Get Objectnames from Each Item and remove if bloodfin coin until cost = 0.
		if (invObj:getTemplateObjectPath() == test and purchaseCost > 0 ) then
			purchaseCost = purchaseCost - 1
			invObj:destroyObjectFromWorld()
			invObj:destroyObjectFromDatabase()
		end
	end
	-- Give player purchased item.
	if reward ~= nil then
		local pItem = giveItem(pInventory, reward, -1)
		if pItem == nil then return false end
		return pItem
	end
	return true
end

--createLootSet(SceneObject container, final string lootGroup, int level, boolean maxCondition,int setSize);	
--if limit == nil or limit == 0 or limit == "" then limit = groupSize end
function bf_tools:reward( pPlayer, reward_type, reward, modifier, test )
	--print("running bf tools reward",pPlayer, reward_type, reward, modifier, test)
	if (pPlayer == nil) then
		return
	end
	local creature = LuaCreatureObject(pPlayer)
	local pInventory = creature:getSlottedObject("inventory")
	if pInventory == nil then
		return false
	end
	if reward_type == "item" then --GIVE PLAYER ITEM ( pPlayer, "item", IFF, invSlot, overFlow )
		-- if Insufficent Space for new item.
		if not overFlow and ( SceneObject( pInventory ):isContainerFullRecursive()) then
			return false
		else --if player has inventory room for new item.
			local overFlow  = (modifier == true) 
			local rewardGiven = giveItem( pInventory, reward , -1, overFlow )
			if rewardGiven then
				local itemName = LuaSceneObject(rewardGiven):getObjectName()
				creature:sendSystemMessage("You Recieved ( "..itemName.." )!")
				creature:playMusicMessage("sound/ui_select_info.snd")
				return rewardGiven
			end
		end
	elseif reward_type == "update" then
		bf_tools:resetQuest( creature, modifier, reward)
		creature:sendSystemMessage("-MISSION UPDATED-")
		-- SUI Quest Update popup.
			local suiManager = LuaSuiManager()
			suiManager:sendMessageBox(pPlayer, pPlayer, "Bloodfin Quest Update:", test, "@ok", "bf_tools", "questUpdate")
		return true
	elseif reward_type == "loot" then --Reward Player from Loot Group (pPlayer, "loot", lootGroup, level, maxCondition)
		local item = createLoot(pInventory, reward, modifier, test)
		if item then
			creature:playMusicMessage("sound/ui_select_info.snd")
			return item
		end
	elseif reward_type == "credits" then --set modifier to "bank" for bank deposit otherwise will default to cash
		--print("rewarding credits")
		if modifier == "bank" then		
			creature:addBankCredits(reward, true)
			creature:sendSystemMessage(tostring(reward).." Credits Cash Recieved!")
			creature:playMusicMessage("sound/ui_select_info.snd")
			--print("bank credits added",reward)
		else
			creature:addCashCredits(reward, true)
			creature:sendSystemMessage(tostring(reward).." Credits Deposited in YOUR Bank!")
			creature:playMusicMessage("sound/ui_select_info.snd")
			--print("cash credits added",reward)
		end
		return true
	elseif reward_type == "rebFaction" then
		local pPlayerObject = creature:getSlottedObject("ghost") 
		local playerObject = LuaPlayerObject(pPlayerObject)
		playerObject:increaseFactionStanding("rebel", reward)
		return true
	elseif reward_type == "impFaction" then
		local pPlayerObject = creature:getSlottedObject("ghost") 
		local playerObject = LuaPlayerObject(pPlayerObject)
		playerObject:increaseFactionStanding("imperial", reward)
		return true
	elseif reward_type == "pet" then
		return true
	elseif reward_type == "data pad" then
		return true
	elseif reward_type == "badge" then
		return true
	elseif reward_type == "permission" then
--[[ TODO research this code for finishing permissions
local pBedroom = getSceneObject(4005944) -- Ranch House bedroom

	if (pBedroom == nil) then
		return
	end

	ObjectManager.withSceneObject(pBedroom, function(bedroom)
		bedroom:setContainerInheritPermissionsFromParent(false)
		bedroom:clearContainerDefaultDenyPermission(WALKIN)
		bedroom:clearContainerDefaultAllowPermission(WALKIN)
		bedroom:setContainerAllowPermission("heroOfTatRanchBedroom", WALKIN)
		bedroom:setContainerDenyPermission("heroOfTatRanchBedroom", MOVEIN)
end)
]]
		return true
	elseif reward_type == "screenplay" then
		if type(test) == "table"  then
			--print("reward type screenplay, of type table found")
			--print("player",pPlayer)
			local state = creature:getScreenPlayState(modifier)
			local smart = false
			local wanted = creature:hasScreenPlayState( reward, modifier )
			--print("has wanted",wanted)
			local needed = creature:hasScreenPlayState(test[1],test[2])
			--print("has needed?",needed)
			if test[4] ~= nil then
				smart = true
			end
			if smart then
				--print("test 1 is:",test[1])
				if (state == test[1]) or (test[1] == nil)  then
					--print("smart state found, needs met")
					bf_tools:resetQuest( creature, modifier, reward )
				else
					--print("smart state found, needs failed")
					return false
				end
			elseif not wanted and needed then
				--print("bitwise found, needs met")
				creature:setScreenPlayState( reward, modifier )
			else
				--print("bitwise found, needs failed")
				return false
			end
			creature:sendSystemMessage("-MISSION UPDATED-")
		-- SUI Quest Update popup.
			local suiManager = LuaSuiManager()
			local suiMessage = "Quest Stage Complete."
			if test[3] then
				suiManager:sendMessageBox(pPlayer, pPlayer, "Bloodfin Quest Update:", test[3], "@ok", "bf_tools", "questUpdate")
				if smart then
					--addWaypointSpecial(pPlayer, clear, wpPlanet, wpName, wpDesc, wpX, wpY, wpColor, wpActive, wpNotify, wpGroupID)
								--{testState,testQuestString,suiMessage,wpPlanet, wpName, wpX, wpY, wpColor, wpGroupID}
					bf_tools:addWaypointSpecial(pPlayer,false,test[4],test[5],"",test[6],test[7],test[8], true, true,test[9])
				end		
			else
				suiManager:sendMessageBox(pPlayer, pPlayer, "Bloodfin Quest Update:", suiMessage, "@ok", "bf_tools", "questUpdate")
			end
			return true
		elseif type(test) ==  "function" and test() then
			if  not (creature:hasScreenPlayState( reward, modifier )) then
				creature:setScreenPlayState( reward, modifier ) 
				creature:sendSystemMessage("-MISSION UPDATED-")
			-- SUI Quest Update popup.
				local suiManager = LuaSuiManager()
				local suiMessage = "Quest Stage Complete."
				suiManager:sendMessageBox(pPlayer, pPlayer, "Bloodfin Quest Update:", suiMessage, "@ok", "bf_tools", "questUpdate")
				return true
			end
		
		elseif  (not creature:hasScreenPlayState( reward, modifier ) and creature:hasScreenPlayState( test, modifier )) or test == nil then
			creature:setScreenPlayState( reward, modifier ) 
			creature:sendSystemMessage("-MISSION UPDATED-")
		-- SUI Quest Update popup.
			local suiManager = LuaSuiManager()
			local suiMessage = "Quest Stage Complete."
			suiManager:sendMessageBox(pPlayer, pPlayer, "Bloodfin Quest Update:", suiMessage, "@ok", "bf_tools", "questUpdate")
			return true
		end
	end
	return false
end

function bf_tools:destroy( pObject )
	if LuaSceneObject(pObject):isValid() then
		LuaSceneObject(pObject):destroyObjectFromWorld()
		LuaSceneObject(pObject):destroyObjectFromDatabase()
	else
		print("bf_tools: Trapped attemped delete on Null Object")
	end
	return 0
end


--( resetQuest )
function bf_tools:resetQuest( creature, questString, set)
	--Reset screenplay states states.
		creature:removeScreenPlayState( 1, questString )
		creature:removeScreenPlayState( 2, questString )
		creature:removeScreenPlayState( 4, questString )
		creature:removeScreenPlayState( 8, questString )
		creature:removeScreenPlayState( 16, questString )
		creature:removeScreenPlayState( 32, questString )
		creature:removeScreenPlayState( 64, questString )
		creature:removeScreenPlayState( 128, questString )
		creature:removeScreenPlayState( questString )

	--if set is specified use it as new screenplay state
		if set ~= nil then
			creature:setScreenPlayState( set, questString )
		end
end

--addWaypointSpecial
function bf_tools:addWaypointSpecial(pPlayer, clear, wpPlanet, wpName, wpDesc, wpX, wpY, wpColor, wpActive, wpNotify, wpGroupID)
	local player = LuaCreatureObject(pPlayer)
	player:playMusicMessage("sound/ship_hyperspace_countdown.snd")
	local pob = player:getPlayerObject()
	local playerObject = LuaPlayerObject(pob)
	if clear == true then
		--removeWaypointBySpecialType(int_ID)
		playerObject:removeWaypointBySpecialType(wpPlanet)
		return true
	end
		--addWaypoint(planet, name, desc, x, y, color, active, notifyClient, specialTypeID, persistence = 1)
	local waypointId = playerObject:addWaypoint(wpPlanet, wpName, wpDesc, wpX, wpY, wpColor, wpActive, wpNotify, wpGroupID, 1)
	return waypointId
end

--addWaypoint
function bf_tools:addWaypoint(pPlayer, wpPlanet, wpName, wpDesc, wpX, wpY, wpColor, wpActive)
	local player = LuaCreatureObject(pPlayer)
	player:playMusicMessage("sound/ship_hyperspace_countdown.snd")
	local pob = player:getPlayerObject()
	local playerObject = LuaPlayerObject(pob)
		--addWaypoint(planet, name, desc, x, y, color, active, notifyClient, specialTypeID, persistence = 1)
	local waypointId = playerObject:addWaypoint(wpPlanet, wpName, wpDesc, wpX, wpY, wpColor, wpActive, true, "", 0)
	return waypointId
end

function bf_tools:sideCheck(pPlayer) --check if player has a side quest if empty/true return true if used/false return string
	local str = readScreenPlayData(pPlayer, "bf_tools:", "sideQuest")
	if str ~= "" and str ~= "none" then
		return str
	end
	return true
end

function bf_tools:sideSet(pPlayer,qStr) --test and if empty/true set string return true if false return false
	local test = bf_tools:sideCheck(pPlayer)
	if test == true then
		writeScreenPlayData(pPlayer, "bf_tools:", "sideQuest", qStr)
		return true
	end
	return false
end

function bf_tools:sideClear(pPlayer)
	writeScreenPlayData(pPlayer, "bf_tools:", "sideQuest", "none")
	bf_tools:addWaypointSpecial(pPlayer,true,129)
	return 0
end

----------------------------------------------(Bloodfin Tools Special Functions)----------------------------------------------	-- (this code belongs soley to BloodfinEMU)
-- ripairs does reversed ipairs iteration of a table (found online)
function ripairs(t) 
  local max = 1
  while t[max] ~= nil do
    max = max + 1
  end
  local function ripairs_it(t, i)
    i = i-1
    local v = t[i]
    if v ~= nil then
      return i,v
    else
      return nil
    end
  end
  return ripairs_it, t, max
end

--Accepts a list as STRING, returns list as TABLE
function splitString(str,sep)
	local list = {}
	for word in string.gmatch(str, '([^'..sep..']+)') do
	    table.insert(list,word)
	end
	return list
end
--( Property of BloodfinEMU.net )-- (this code belongs soley to BloodfinEMU)

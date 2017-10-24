crimson_sendpatrol_system = ScreenPlay:new {
    numberOfActs = 1, 
    questString = "crimson_sendpatrol_system_task",
    states = {}, 
}

registerScreenPlay("crimson_sendpatrol_system", true)



function crimson_sendpatrol_system:start() 

   
	
	local pMasterSergant = spawnMobile("talus", "crimson_sgthaggins", 120, -2963.64,12.86,-2276.47, 230, 0 )

	-- Gate west
	local pSquad1 = spawnMobile("talus", "crimson_sentry_stormtrooper", 120, -2960.92,12.96,-2259.99, 90, 0 )
    local oSquad1 = LuaCreatureObject(pSquad1)
    local aiAgentSquad1 = LuaAiAgent(pSquad1)
	aiAgentSquad1:setAiTemplate("idlewander")
	createObserver(SCREENPLAYSTATECHANGED, "crimson_sendpatrol_system", "ose_Squad1", pSquad1)	
	createObserver(DESTINATIONREACHED, "crimson_sendpatrol_system", "ose_DestReachedSquad1", pSquad1)	
	writeData("crimson:squad1:objectid", oSquad1:getObjectID())
	writeData("crimson:squad1:activepoints", 0)
    writeStringData("crimson:squad1:location","westgate")  
  	local pSquad2 = spawnMobile("talus", "crimson_stormtrooper", 180, -2959.39,13.12,-2263.70, 90, 0 )
	local oSquad2 = LuaCreatureObject(pSquad2)	
	local aiAgentSquad2 = LuaAiAgent(pSquad2)
	aiAgentSquad2:setAiTemplate("idlewander")
	createObserver(SCREENPLAYSTATECHANGED, "crimson_sendpatrol_system", "ose_Squad2", pSquad2)
	createObserver(DESTINATIONREACHED, "crimson_sendpatrol_system", "ose_DestReachedSquad2", pSquad2)	
	writeData("crimson:squad2:activepoints", 0)
	writeData("crimson:squad2:objectid", oSquad2:getObjectID())
    writeStringData("crimson:squad2:location","westgate")	
	local pSquad3 = spawnMobile("talus", "crimson_stormtrooper", 180, -2960.22,13.09,-2268.19, 90, 0 )
	local oSquad3 = LuaCreatureObject(pSquad3)
    local aiAgentSquad3 = LuaAiAgent(pSquad3)
	aiAgentSquad3:setAiTemplate("idlewander")
	createObserver(SCREENPLAYSTATECHANGED, "crimson_sendpatrol_system", "ose_Squad3", pSquad3)
	createObserver(DESTINATIONREACHED, "crimson_sendpatrol_system", "ose_DestReachedSquad3", pSquad3)
	writeData("crimson:squad3:activepoints", 0)	
	writeData("crimson:squad3:objectid", oSquad3:getObjectID())
    writeStringData("crimson:squad3:location","westgate")
end

function crimson_sendpatrol_system:setCommonWayWestGateToShuttle(oAiAgent)
	oAiAgent:addManualPatrolPoint(-2968.3,12.3,-2257.0)
	oAiAgent:addManualPatrolPoint(-2964.9,10.3,-2190.3)
	oAiAgent:addManualPatrolPoint(-3012.22, 7.64,-2162.96)	
	oAiAgent:addManualPatrolPoint(-3046.51, 7.70,-2161.15)
	oAiAgent:addManualPatrolPoint(-3090.22, 5.94,-2160.56)
	oAiAgent:addManualPatrolPoint(-3132.08, 5.92,-2171.44)
	oAiAgent:addManualPatrolPoint(-3155.11, 6.1,-2178.05)
return oAiAgent
end

function crimson_sendpatrol_system:setCommonWayWestShuttleTogate(oAiAgent)
	oAiAgent:addManualPatrolPoint(-3090.22, 5.94,-2160.56)
	oAiAgent:addManualPatrolPoint(-3046.51, 7.70,-2161.15)
	oAiAgent:addManualPatrolPoint(-3012.22, 7.64,-2162.96)	
	oAiAgent:addManualPatrolPoint(-2976.6, 9.1,-2170.6)
	oAiAgent:addManualPatrolPoint(-2964.9,10.3,-2190.3)
	oAiAgent:addManualPatrolPoint(-2966.6,12.0,-2234.6)
	oAiAgent:addManualPatrolPoint(-2968.3,12.3,-2257.0)
return oAiAgent
end

function crimson_sendpatrol_system:ose_DestReachedSquad1(pMobile, pMovingObject)
	local aiAgent_Squad = LuaAiAgent(pMobile)
	if (aiAgent_Squad ~= nil) then
		local step = readData("crimson:squad1:activepoints")
		if (step > 0) then
			writeData("crimson:squad1:trigger", 1)
			aiAgent_Squad:setActualPosAsHomeLocation()
			step = step - 1
			writeData("crimson:squad1:activepoints", step)
		end 
		if (step == 0 and readData("crimson:squad1:trigger") == 1) then
			aiAgent_Squad:setAiTemplate("idlewander")
			if (readStringData("crimson:squad1:location") == "westgate") then
				writeStringData("crimson:squad1:location","shuttle")
			else
				writeStringData("crimson:squad1:location","westgate")
			end
			writeData("crimson:squad1:trigger", 0)
		end
	end
	return 0
end

function crimson_sendpatrol_system:ose_DestReachedSquad2(pMobile, pMovingObject)
	local aiAgent_Squad = LuaAiAgent(pMobile)
	if (aiAgent_Squad ~= nil) then
		local step = readData("crimson:squad2:activepoints")
		if (step > 0) then
			writeData("crimson:squad2:trigger", 1)
			aiAgent_Squad:setActualPosAsHomeLocation()
			step = step - 1
			writeData("crimson:squad2:activepoints", step)
		end 
		if (step == 0 and readData("crimson:squad2:trigger") == 1) then
			aiAgent_Squad:setAiTemplate("idlewander")
			if (readStringData("crimson:squad2:location") == "westgate") then
				writeStringData("crimson:squad2:location","shuttle")
			else
				writeStringData("crimson:squad2:location","westgate")
			end
			writeData("crimson:squad2:trigger", 0)
		end
	end
end

function crimson_sendpatrol_system:ose_DestReachedSquad3(pMobile, pMovingObject)
	local aiAgent_Squad = LuaAiAgent(pMobile)
	if (aiAgent_Squad ~= nil) then
		local step = readData("crimson:squad3:activepoints")
		if (step > 0) then
			writeData("crimson:squad3:trigger", 1)
			aiAgent_Squad:setActualPosAsHomeLocation()
			step = step - 1
			writeData("crimson:squad3:activepoints", step)
		end 
		if (step == 0 and readData("crimson:squad3:trigger") == 1) then
			aiAgent_Squad:setAiTemplate("idlewander")
			if (readStringData("crimson:squad3:location") == "westgate") then
				writeStringData("crimson:squad3:location","shuttle")
			else
				writeStringData("crimson:squad3:location","westgate")
			end
			writeData("crimson:squad3:trigger", 0)
		end
	end
	return 0
end

function crimson_sendpatrol_system:ose_Squad1(pMobile, pMovingObject)
	 local oMobile = LuaCreatureObject(pMobile)
	 local actuallocation = readStringData("crimson:squad1:location")
	 local aiAgent_Squad = LuaAiAgent(pMobile)
	 if (actuallocation == "westgate") then
	 	-- send troops to shuttle
	 			if (aiAgent_Squad ~= nil) then
				aiAgent_Squad:resetBehaviorList()
				aiAgent_Squad:clearPatrolPoints()
				aiAgent_Squad:setAiTemplate("patrol")
				writeData("crimson:squad1:activepoints", 8)
				aiAgent_Squad = crimson_sendpatrol_system:setCommonWayWestGateToShuttle(aiAgent_Squad)
				aiAgent_Squad:addManualPatrolPoint(-3194.7, 6.02,-2189.31)
				aiAgent_Squad:startPatrol()
			else
				printf("debuginfo:crimson_sendpatrol:aiAgent_Squad1 = nil\n")
			end	
			
	  elseif (actuallocation == "shuttle") then 
	  		-- then send troops back to the Gate
  			if (aiAgent_Squad ~= nil) then
				aiAgent_Squad:resetBehaviorList()
				aiAgent_Squad:clearPatrolPoints()
				aiAgent_Squad:setAiTemplate("patrol")
				writeData("crimson:squad1:activepoints", 8)
				aiAgent_Squad = crimson_sendpatrol_system:setCommonWayWestShuttleTogate(aiAgent_Squad)
				aiAgent_Squad:addManualPatrolPoint(-2960.92,12.96,-2259.99)
				aiAgent_Squad:startPatrol()
			else
				printf("debuginfo:crimson_sendpatrol:aiAgent_Squad1 = nil\n")
			end	
		end
	return 0
end

function crimson_sendpatrol_system:ose_Squad2(pMobile, pMovingObject)
	 local oMobile = LuaCreatureObject(pMobile)
	 local actuallocation = readStringData("crimson:squad2:location")
	 local aiAgent_Squad = LuaAiAgent(pMobile)
 		if (actuallocation == "westgate") then
	 	-- send troops to shuttle
	 
			if (aiAgent_Squad ~= nil) then
				aiAgent_Squad:resetBehaviorList()
				aiAgent_Squad:clearPatrolPoints()
				aiAgent_Squad:setAiTemplate("patrol")
				writeData("crimson:squad2:activepoints", 8)
				aiAgent_Squad = crimson_sendpatrol_system:setCommonWayWestGateToShuttle(aiAgent_Squad)
				aiAgent_Squad:addManualPatrolPoint(-3194.70, 5.9,-2180.73)
				aiAgent_Squad:startPatrol()
			else
				printf("debuginfo:crimson_sendpatrol:aiAgent_Squad2 = nil\n")
			end	
			
	   elseif (actuallocation == "shuttle") then 
	  		-- then send troops back to the Gate
  			if (aiAgent_Squad ~= nil) then
				aiAgent_Squad:resetBehaviorList()
				aiAgent_Squad:clearPatrolPoints()
				aiAgent_Squad:setAiTemplate("patrol")
				writeData("crimson:squad2:activepoints", 8)
				aiAgent_Squad = crimson_sendpatrol_system:setCommonWayWestShuttleTogate(aiAgent_Squad)
				aiAgent_Squad:addManualPatrolPoint(-2959.39,13.12,-2263.70)
				aiAgent_Squad:startPatrol()
			else
				printf("debuginfo:crimson_sendpatrol:aiAgent_Squad2 = nil\n")
			end	
		end
	return 0 
end
function crimson_sendpatrol_system:ose_Squad3(pMobile, pMovingObject)
	 local oMobile = LuaCreatureObject(pMobile)
	 local actuallocation = readStringData("crimson:squad3:location")
	 local aiAgent_Squad = LuaAiAgent(pMobile)	 
     if (actuallocation == "westgate") then
	 	-- send troops to shuttle
	 		if (aiAgent_Squad ~= nil) then
				aiAgent_Squad:resetBehaviorList()
				aiAgent_Squad:clearPatrolPoints()
				aiAgent_Squad:setAiTemplate("patrol")
				writeData("crimson:squad3:activepoints", 8)
				aiAgent_Squad = crimson_sendpatrol_system:setCommonWayWestGateToShuttle(aiAgent_Squad)
				aiAgent_Squad:addManualPatrolPoint(-3194.7, 6.02, -2189.31)
				aiAgent_Squad:startPatrol()
			else
				printf("debuginfo:crimson_sendpatrol:aiAgent_Squad3 = nil\n")
			end	
			
	   elseif (actuallocation == "shuttle") then 
	  		-- then send troops back to the Gate
  			if (aiAgent_Squad ~= nil) then
				aiAgent_Squad:resetBehaviorList()
				aiAgent_Squad:clearPatrolPoints()
				aiAgent_Squad:setAiTemplate("patrol")
				writeData("crimson:squad3:activepoints", 8)
				aiAgent_Squad = crimson_sendpatrol_system:setCommonWayWestShuttleTogate(aiAgent_Squad)
				aiAgent_Squad:addManualPatrolPoint(-2960.22,13.09,-2268.19)
				aiAgent_Squad:startPatrol()
			else
				printf("debuginfo:crimson_sendpatrol:aiAgent_Squad3 = nil\n")
			end	
		end
	return 0
end


crimson_sendpatrol_system_convo_handler = Object:new {
	tstring = "conversation_crimson_sendpatrol"
 }

 function crimson_sendpatrol_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

    -- Assign the player to variable creature for use inside this function.
	local creature = LuaCreatureObject(conversingPlayer)
	-- Get the last conversation to determine whetehr or not we're  on the first screen
	local convosession = creature:getConversationSession()
	lastConversation = nil
	local conversation = LuaConversationTemplate(conversationTemplate)
	local nextConversationScreen 
		-- If there is a conversation open, do stuff with it
	if ( conversation ~= nil ) then
		-- check to see if we have a next screen
		if ( convosession ~= nil ) then
			local session = LuaConversationSession(convosession)
			if ( session ~= nil ) then
				lastConversationScreen = session:getLastConversationScreen()
			end
		end

		-- Last conversation was nil, so get the first screen
		if ( lastConversationScreen == nil ) then
			nextConversationScreen = conversation:getInitialScreen()
		else
	
		-- Start playing the rest of the conversation based on user input
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
			-- Set variable to track what option the player picked and get the option picked
			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
			nextConversationScreen = conversation:getScreen(optionLink)
			-- Get some information about the player.
			local playerObjPointer = creature:getPlayerObject()
			local playerObj = LuaPlayerObject(playerObjPointer)
			local player = LuaSceneObject(conversingPlayer)
			if (creature:getFaction() == 3679112276) then
			    
			    if (optionLink == "qOrderSquadToShuttle" and readStringData("crimson:squad1:location") == "westgate") then 
					crimson_sendpatrol_system_convo_handler:TriggerScreenplayState(1)
				elseif (optionLink == "qOrderSquadToShuttle" and readStringData("crimson:squad1:location") ~= "westgate") then 
					nextConversationScreen = conversation:getScreen("troops_noreplacement")
					creature:sendSystemMessage("all troops on duty")
				elseif (optionLink == "qOrderSquadBack" and readStringData("crimson:squad1:location") == "shuttle") then 
					crimson_sendpatrol_system_convo_handler:TriggerScreenplayState(2)
				elseif (optionLink == "qOrderSquadBack" and readStringData("crimson:squad1:location") ~= "shuttle") then 
					nextConversationScreen = conversation:getScreen("troops_noreplacement")
					creature:sendSystemMessage("all troops on duty")
				end			
			else
				nextConversationScreen = conversation:getScreen("wrong_faction")
				creature:sendSystemMessage("You are no member of the imperial forces")
			end 
		end
	end
	return nextConversationScreen
end

function crimson_sendpatrol_system_convo_handler:TriggerScreenplayState(value)
			        local pSquad1 = LuaCreatureObject(getCreatureObject(readData("crimson:squad1:objectid")))
					local pSquad2 = LuaCreatureObject(getCreatureObject(readData("crimson:squad2:objectid")))
					local pSquad3 = LuaCreatureObject(getCreatureObject(readData("crimson:squad3:objectid")))
					pSquad1:setScreenPlayStateValue(value,"crimson:squad1:cmd")
					pSquad2:setScreenPlayStateValue(value,"crimson:squad2:cmd")
					pSquad3:setScreenPlayStateValue(value,"crimson:squad3:cmd")	
end

function crimson_sendpatrol_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end



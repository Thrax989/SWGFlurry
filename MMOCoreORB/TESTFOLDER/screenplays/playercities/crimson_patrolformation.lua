	crimson_patrolformation_system = ScreenPlay:new {
    numberOfActs = 1, 
    questString = "crimson_patrolformation_system_task",
    states = {}, 
}

registerScreenPlay("crimson_patrolformation_system", true)
myHelper = require("screenplayHelper")
--global Variables
countSquad = 12
maxInLine = 3

x_off = 1
y_off = 1

function crimson_patrolformation_system:start() 

	
	local sgttharn = spawnMobile("talus", "crimson_sgttharn", 600, -3382.2, 6.31, -2208.3, 90, 0)
	createObserver(SCREENPLAYSTATECHANGED, "crimson_patrolformation_system", "ose_sgttharn", sgttharn)	
	--createObserver(DESTINATIONREACHED, "crimson_patrolformation_system", "ose_DestReachedsgttharn", sgttharn)
	writeData("crimson:shuttle:task",4)
	local osgttharn = LuaCreatureObject(sgttharn)
	writeData("crimson:sgttharn:objectid", osgttharn:getObjectID())	
	
	local pShuttle = spawnMobile("talus", "lambda_shuttle", 1, -3444, 11.0, -2100, 90, 0)
	local shuttle = LuaCreatureObject(pShuttle)
	writeData("crimson:shuttle:objectid", shuttle:getObjectID())
	shuttle:setOptionsBitmask(256)
	shuttle:setPosture(PRONE)
end

function crimson_patrolformation_system:spawnSquad()
	myHelper.spawnSquad("Formation:LoadingSquad:", 20, 4, -3345, 7.4 , -2305, 270, 1 , 1, "talus", "crimson_stormtrooper")
	myHelper.spawnSquad("Formation:LoadingSquadATST:", 4, 2, -3345, 7.4 , -2315, 270, 5 , 5, "talus", "crimson_at_st")
end

function crimson_patrolformation_system:startevent(pCollector, pPlayer)
	crimson_patrolformation_system:landShuttle()
end

function crimson_patrolformation_system:landShuttle()
	local pShuttle = getCreatureObject(readData("crimson:shuttle:objectid"))
	if (pShuttle ~= nil) then
		local oshuttle = LuaCreatureObject(pShuttle)
		if (oshuttle ~= nil) then
			oshuttle:setPosture(PRONE)	
		end
	end
end

function crimson_patrolformation_system:waittimer(pMobile)
	writeData("crimson:shuttle:task", 2)
end

function crimson_patrolformation_system:waitShuttleSequence(pMobile)
	writeData("crimson:shuttle:task", 4)
	crimson_patrolformation_system:landShuttle()
	return 0
end

function crimson_patrolformation_system:ose_sgttharn(pMobile, pMovingObject)
	if (readData("crimson:shuttle:task") == 1) then
		crimson_patrolformation_system:spawnSquad()
		crimson_patrolformation_system:moveSquad("Formation:LoadingSquad:", 20, 4, 1, 1)
		crimson_patrolformation_system:moveSquad("Formation:LoadingSquadATST:", 4, 2, 5, 5)
		createEvent(20000, "crimson_patrolformation_system", "waittimer", pMobile)
	elseif (readData("crimson:shuttle:task") == 3) then
		crimson_patrolformation_system:destroySquad("Formation:LoadingSquad:", 21)
		crimson_patrolformation_system:destroySquad("Formation:LoadingSquadATST:", 4)
		local pShuttle = getCreatureObject(readData("crimson:shuttle:objectid"))
		local oshuttle = LuaCreatureObject(pShuttle)
		oshuttle:setPosture(FLYING)
		createEvent(20000, "crimson_patrolformation_system", "waitShuttleSequence", pMobile)
	end
end

function crimson_patrolformation_system:destroySquad(squadid, count)
	for i = 0 , count - 1 , 1 do
		local stringhelper = (squadid..i)
		myHelper.destroy(readData(stringhelper..":objectid"), false)
	end
end

function crimson_patrolformation_system:moveSquad(squadid, count, linemax, xoffset, yoffset)

	local linecounter = 0
	local linehelper = 0 

	for i = 0 , count - 1 , 1 do
		local stringhelper = (squadid..i)
		
		if (linehelper == linemax) then
			linecounter = linecounter +1
			linehelper = 0 
		end
		local pSquad = getCreatureObject(readData(stringhelper..":objectid"))
		local aiAgent_Squad = LuaAiAgent(pSquad)
		
		if (aiAgent_Squad ~= nil) then
			aiAgent_Squad:resetBehaviorList()
			aiAgent_Squad:clearPatrolPoints()
			aiAgent_Squad:setAiTemplate("patrol")
			aiAgent_Squad = crimson_patrolformation_system:setPath(aiAgent_Squad, linehelper * xoffset, linecounter * yoffset)
			aiAgent_Squad:startPatrol()
		end		
	    linehelper = linehelper + 1
	end
	
end
function crimson_patrolformation_system:moveSquadatst(squadid, count, linemax, xoffset, yoffset)

	local linecounter = 0
	local linehelper = 0 

	for i = 0 , count - 1 , 1 do
		local stringhelper = (squadid..i)
		
		if (linehelper == linemax) then
			linecounter = linecounter +1
			linehelper = 0 
		end
		local pSquad = getCreatureObject(readData(stringhelper..":objectid"))
		local aiAgent_Squad = LuaAiAgent(pSquad)
		
		if (aiAgent_Squad ~= nil) then
			aiAgent_Squad:resetBehaviorList()
			aiAgent_Squad:clearPatrolPoints()
			aiAgent_Squad:setAiTemplate("patrol")
			aiAgent_Squad = crimson_patrolformation_system:setPath(aiAgent_Squad, linehelper * xoffset, linecounter * yoffset)
			aiAgent_Squad:startPatrol()
		end		
	    linehelper = linehelper + 1
	end
	
end
function crimson_patrolformation_system:setPath(oAiAgent, xoffset, yoffset)
	if (oAiAgent ~= nil) then
		oAiAgent:addManualPatrolPoint(-3412 + xoffset, 7,-2305 + yoffset)
		oAiAgent:addManualPatrolPoint(-3430 + xoffset, 6.5,-2295 + yoffset)
		oAiAgent:addManualPatrolPoint(-3430 + xoffset, 6.4,-2235 + yoffset)
		oAiAgent:addManualPatrolPoint(-3430 + xoffset, 10.4,-2175 + yoffset)
		oAiAgent:addManualPatrolPoint(-3440 + xoffset, 10.8,-2115 + yoffset)
	end
	return oAiAgent
end
function crimson_patrolformation_system:setPathatst(oAiAgent, xoffset, yoffset)
	if (oAiAgent ~= nil) then
		oAiAgent:addManualPatrolPoint(-3412 + xoffset, 7,  -2315 + yoffset)
		oAiAgent:addManualPatrolPoint(-3440 + xoffset, 6.5, -2295 + yoffset)
		oAiAgent:addManualPatrolPoint(-3440 + xoffset, 6.4, -2235 + yoffset)
		oAiAgent:addManualPatrolPoint(-3440 + xoffset, 10.4, -2175 + yoffset)
		oAiAgent:addManualPatrolPoint(-3450 + xoffset, 10.8, -2115 + yoffset)	
	end
	return oAiAgent
end

crimson_loadformationconvo_template_handler = Object:new {
	tstring = "crimson_loadformationconvo_template_handler"
 }

 function crimson_loadformationconvo_template_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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

			    if (optionLink == "qOrderLoadTroops" and readData("crimson:shuttle:task") == 4) then 
					writeData("crimson:shuttle:task", 1)
					local sgttharn = LuaCreatureObject(getCreatureObject(readData("crimson:sgttharn:objectid")))
					sgttharn:setScreenPlayStateValue(1,"crimson:sgttharn:cmd")
				elseif (optionLink == "qOrderStartShuttle" and readData("crimson:shuttle:task") == 2)  then 
					writeData("crimson:shuttle:task", 3)					
					local sgttharn = LuaCreatureObject(getCreatureObject(readData("crimson:sgttharn:objectid")))
					sgttharn:setScreenPlayStateValue(2,"crimson:sgttharn:cmd")
     			elseif (optionLink == "qOrderLoadTroops" and readData("crimson:shuttle:task") ~= 4) then
					nextConversationScreen = conversation:getScreen("troops_noreplacement")
					creature:sendSystemMessage("all troops on duty")
     			elseif (optionLink == "qOrderStartShuttle" and readData("crimson:shuttle:task") ~= 2) then
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

function crimson_loadformationconvo_template_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end



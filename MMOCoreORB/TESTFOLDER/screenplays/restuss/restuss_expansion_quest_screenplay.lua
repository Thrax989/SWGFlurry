restuss_expansion_quest_screenplay = ScreenPlay:new {
	numberOfActs = 1,
	questString = "restuss_expansion_quest",
	states = {
		started_yes = 2, --has player accepted the quest
		finished_short = 4, --has player finished the pvp questline
		finished_long = 8, --has player finished the neutral questline
		complete = 16,
		has_reset = 32,
		started_short = 64,
		started_long = 128
	},

	questStringTwo = "restuss_expansion_quest_kills",
	statestwo = {
		reb_boss_one = 2, --Flags for Bosses Killed
		reb_boss_two = 4,
		reb_boss_three = 8,
		imp_boss_one = 16,
		imp_boss_two = 32,
		imp_boss_three = 64, 
		side_started = 128 -- Picked up quest from neutral
		
	}

}

registerScreenPlay("restuss_expansion_quest_screenplay", true)

-----------------------------

function restuss_expansion_quest_screenplay:start()

	printf("restuss_expansion_quest_screenplay.screenplaystart\n")

	--Spawn Initial Triggers for Rebel/Imperial Restus Expansion Quest Givers
	spawnMobile("talus", "quest_barc_trigger_imp", 1, -2244.7, 20.0, 2266.5, 49, 0 )
	spawnMobile("rori", "quest_barc_trigger_rebel", 1, 3640.7, 96.0, -6399.6, 143, 0)

	--spawn PVP Triggers for Rebel/Imperial Restuss Expansion Quest Givers
	spawnMobile("rori", "quest_barc_pvp_trigger_imp", 1, 5273.6, 79.9, 6106.5, 23, 0 )
	spawnMobile("rori", "quest_barc_pvp_trigger_rebel", 1, 5280.4, 79.3, 6106.6, -2, 0)

	--spawn Neutral PVP Trigger for Rebel/Imperial Restuss Expansion Quest Giver
end

-------------------------------------------


--  (----------)                  -  Sample quest conversation handlers  -                                 (---------)


restuss_expansion_quest_convo_handler = Object:new {}

function restuss_expansion_quest_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	local creature = LuaCreatureObject(conversingPlayer)
	local convosession = creature:getConversationSession()
	local conversation = LuaConversationTemplate(conversationTemplate)
	local lastConversationScreen = nil
	local nextConversationScreen

	if ( conversation ~= nil ) then
		-- checking to see if we have a next screen
		if ( convosession ~= nil ) then
			 local session = LuaConversationSession(convosession)
			 if ( session ~= nil ) then
			 	lastConversationScreen = session:getLastConversationScreen()
			 end
		end
		if ( lastConversationScreen == nil ) then
			local creature = LuaCreatureObject(conversingPlayer)
			local hasAccepted = creature:hasScreenPlayState(restuss_expansion_quest_screenplay.states.started_yes, restuss_expansion_quest_screenplay.questString)
			if ( hasAccepted == false ) then
				nextConversationScreen = conversation:getScreen("first_screen")
					-- if the quest is Has been RESET
				if  ( creature:hasScreenPlayState(restuss_expansion_quest_screenplay.states.has_reset, restuss_expansion_quest_screenplay.questString) ) then

					nextConversationScreen = conversation:getScreen("has_reset")
				end
			else

				--[[	   states:
						started_yes = 2,
						finished_short = 4,
						finished_long = 8,
						complete = 16,
						has_reset = 32
						started_short = 64
						started_long = 128
				]]


			--if player		
			
			-- if the quest is already completed and rewarded
				if ( creature:hasScreenPlayState(restuss_expansion_quest_screenplay.states.complete, restuss_expansion_quest_screenplay.questString) ) then
					print("already completed")
					nextConversationScreen = conversation:getScreen("complete")

			-- if the player has completed the pvp quest line
				elseif  ( creature:hasScreenPlayState(restuss_expansion_quest_screenplay.states.finished_short, restuss_expansion_quest_screenplay.questString) ) then
					nextConversationScreen = conversation:getScreen("finished_short")

				-- if the quest is already completed long
					if  ( creature:hasScreenPlayState(restuss_expansion_quest_screenplay.states.finished_long, restuss_expansion_quest_screenplay.questString) ) then
						nextConversationScreen = conversation:getScreen("finished_long")
					end

			-- if player has started pvp quest line
				elseif ( creature:hasScreenPlayState(restuss_expansion_quest_screenplay.states.started_short, restuss_expansion_quest_screenplay.questString) ) then
					nextConversationScreen = conversation:getScreen("started_short")
						--[[ questStringTwo flags : statestwo
						reb_boss_one = 2, --Flags for Bosses Killed
						reb_boss_two = 4,
						reb_boss_three = 8,
						imp_boss_one = 16,
						imp_boss_two = 32,
						imp_boss_three = 64, 
						side_started = 128 -- Picked up quest from neutral
						]]

				-- if the quest is still in progress
				else
					nextConversationScreen = conversation:getScreen("finished_no")
				end
			end
		else
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
			nextConversationScreen = conversation:getScreen(optionLink)
		end
	end

	return nextConversationScreen
end

function restuss_expansion_quest_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)

	local conversation = LuaConversationTemplate(conversationTemplate)
	local screen = LuaConversationScreen(conversationScreen)
	local screenID = screen:getScreenID()
	local player = LuaCreatureObject(conversingPlayer)

	-- Get some information about the player and npc quest giver.
			local creature = LuaCreatureObject(conversingPlayer)
			local npcCreature = LuaCreatureObject(conversingNPC)
			local isNpcImperial = npcCreature:isImperial()
 			local isImperial = creature:isImperial()
			local isNpcRebel = npcCreature:isRebel()
 			local isRebel = creature:isRebel()
			local playerObjPointer = creature:getPlayerObject()
 			local playerObj = LuaPlayerObject(playerObjPointer)

	if (isNpcImperial ~= isImperial)or(isNpcRebel ~= isRebel) then
		if (isImperial ~= true) and (isRebel ~=true)then
			conversationScreen = conversation:getScreen("reject_neutral")
		else
			conversationScreen = conversation:getScreen("reject_opposite")
		end
	elseif ( screenID == "started_kill") then
		player:setScreenPlayState( restuss_expansion_quest_screenplay.states.started_short , restuss_expansion_quest_screenplay.questString)

	elseif (screenID == "reb_taskmaster_logic_a") then
		if ( player:hasScreenPlayState(restuss_expansion_quest_screenplay.statestwo.imp_boss_three, restuss_expansion_quest_screenplay.questStringTwo) ) then
			 player:setScreenPlayState(restuss_expansion_quest_screenplay.states.finished_short, restuss_expansion_quest_screenplay.questString)
			conversationScreen = conversation:getScreen("finished_short")

		elseif ( player:hasScreenPlayState(restuss_expansion_quest_screenplay.statestwo.imp_boss_two, restuss_expansion_quest_screenplay.questStringTwo) ) then
			conversationScreen = conversation:getScreen("started_kill_three")

		elseif ( player:hasScreenPlayState(restuss_expansion_quest_screenplay.statestwo.imp_boss_one, restuss_expansion_quest_screenplay.questStringTwo) ) then
			conversationScreen = conversation:getScreen("started_kill_two")

		else
			conversationScreen = conversation:getScreen("started_kill_one")
		end

	elseif (screenID == "imp_taskmaster_logic_a") then
		if ( player:hasScreenPlayState(restuss_expansion_quest_screenplay.statestwo.reb_boss_three, restuss_expansion_quest_screenplay.questStringTwo) ) then
			 player:setScreenPlayState(restuss_expansion_quest_screenplay.states.finished_short, restuss_expansion_quest_screenplay.questString)
			nextConversationScreen = conversation:getScreen("finished_short")

		elseif ( player:hasScreenPlayState(restuss_expansion_quest_screenplay.statestwo.reb_boss_two, restuss_expansion_quest_screenplay.questStringTwo) ) then
			conversationScreen = conversation:getScreen("started_kill_three")

		elseif ( player:hasScreenPlayState(restuss_expansion_quest_screenplay.statestwo.reb_boss_one, restuss_expansion_quest_screenplay.questStringTwo) ) then
			conversationScreen = conversation:getScreen("started_kill_two")

		else
			conversationScreen = conversation:getScreen("started_kill_one")
		end

	elseif (screenID == "reward_short" ) then
		local pInventory = CreatureObject(conversingPlayer):getSlottedObject("inventory")
		
		if (SceneObject(pInventory):isContainerFullRecursive()) then
 			creature:sendSystemMessage("Full Inventory") 
 			return 0 
		end

		if isImperial then
			giveItem(pInventory, "object/tangible/deed/vehicle_deed/barc_speeder_imperial_deed.iff", -1)
		elseif isRebel then
			giveItem(pInventory, "object/tangible/deed/vehicle_deed/barc_speeder_rebel_deed.iff", -1)		
		end
		player:setScreenPlayState( restuss_expansion_quest_screenplay.states.complete , restuss_expansion_quest_screenplay.questString)

	elseif ( screenID == "started_yes" ) then
		player:setScreenPlayState( restuss_expansion_quest_screenplay.states.started_yes , restuss_expansion_quest_screenplay.questString)

	elseif ( screenID == "quest_status" ) then
		conversationScreen = screen:cloneScreen()

		local clonedConversation = LuaConversationScreen(conversationScreen)
		local thisState = player:getScreenPlayState(restuss_expansion_quest_screenplay.questString)

		if ( thisState ~= 0 ) then
			clonedConversation:setCustomDialogText("You are on stage " .. thisState .. " of this quest")
		else
			clonedConversation:setCustomDialogText("You are not yet on this quest")
		end

	elseif ( screenID == "quest_reset")  then

		player:removeScreenPlayState(restuss_expansion_quest_screenplay.states.started_yes, restuss_expansion_quest_screenplay.questString)
		player:removeScreenPlayState(restuss_expansion_quest_screenplay.states.started_short , restuss_expansion_quest_screenplay.questString)
		player:removeScreenPlayState(restuss_expansion_quest_screenplay.states.finished_short , restuss_expansion_quest_screenplay.questString)
		player:removeScreenPlayState(restuss_expansion_quest_screenplay.states.finished_long, restuss_expansion_quest_screenplay.questString)
		player:removeScreenPlayState(restuss_expansion_quest_screenplay.states.complete, restuss_expansion_quest_screenplay.questString)
		
		player:removeScreenPlayState(restuss_expansion_quest_screenplay.statestwo.reb_boss_one, restuss_expansion_quest_screenplay.questStringTwo)
		player:removeScreenPlayState(restuss_expansion_quest_screenplay.statestwo.reb_boss_two, restuss_expansion_quest_screenplay.questStringTwo)
		player:removeScreenPlayState(restuss_expansion_quest_screenplay.statestwo.reb_boss_three, restuss_expansion_quest_screenplay.questStringTwo)

		player:removeScreenPlayState(restuss_expansion_quest_screenplay.statestwo.imp_boss_one, restuss_expansion_quest_screenplay.questStringTwo)
		player:removeScreenPlayState(restuss_expansion_quest_screenplay.statestwo.imp_boss_two, restuss_expansion_quest_screenplay.questStringTwo)
		player:removeScreenPlayState(restuss_expansion_quest_screenplay.statestwo.imp_boss_three, restuss_expansion_quest_screenplay.questStringTwo)

		player:removeScreenPlayState(restuss_expansion_quest_screenplay.states.has_reset, restuss_expansion_quest_screenplay.questString)

	end

	return conversationScreen
end

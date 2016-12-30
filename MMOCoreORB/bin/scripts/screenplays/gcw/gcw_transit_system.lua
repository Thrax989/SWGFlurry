gcw_transit_system = ScreenPlay:new {
	numberOfActs = 1,
   questString = "gcw_transit_system_task",
   states = {}, 
}
spHelper = require("screenplayHelper")
registerScreenPlay("gcw_transit_system", true)
local ObjectManager = require("managers.object.object_manager")
 
function gcw_transit_system:start() 
   local pImpPilotCorellia = spawnMobile("corellia", "imp_transitpilot", 60, -155.7, 28.0, -4699.1, 83, 0 )

--   local pImpPilotNaboo = spawnMobile("Naboo", "imp_transitpilot", 60, 2445, 292, -3888, 35, 0 )
--   local pImpPilotYavin4 = spawnMobile("Yavin4", "imp_transitpilot", 60, 4044, 37.0, -6250, 35, 0 )

end

gcw_transit_system_convo_handler = Object:new {
   tstring = "conversation_gcw_transit"
 }
function gcw_transit_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	   
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
			local isImperial = creature:isImperial()
			local isRebel = creature:isImperial()
			local isImperial = creature:isImperial()
			local playerObjPointer = creature:getPlayerObject()
			local playerObj = LuaPlayerObject(playerObjPointer)
			local player = LuaSceneObject(conversingPlayer)
			

--  local pImpPilotCorellia = spawnMobile("Corellia", "imp_transitpilot", 60, -136.1, 28.0, -4683.9, 174, 0 )
--   local pImpPilotCoro = spawnMobile("Corellia", "imp_transitpilot", 60, 135, 28.0, -4705, 35, 0 )


			if (creature:getFaction() == 3679112276) then
				-- xxxxxxxxxx Tatooine xxxxxxxxxxxx	
				if (optionLink == "sTatooine_bestine" and playerObj:getFactionStanding("imperial") >= 70) then
			        playerObj:decreaseFactionStanding("imperial",50)
				    player:switchZone("tatooine",-1133.2, 98, -3896,0)
				elseif (optionLink == "sTatooine_bestine" and playerObj:getFactionStanding("imperial") < 70) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end
				-- xxxxxxxxxx PvP Battleground xxxxxxxxxxxx	 	
				if (optionLink == "sPvP" and playerObj:getFactionStanding("imperial") >= 70) then
	        		        playerObj:decreaseFactionStanding("imperial",50)
            				player:switchZone("tatooine", 3.1, -10.0, 52.3, 281475177729379)
				elseif (optionLink == "sPvP" and playerObj:getFactionStanding("imperial") < 70) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end				
				-- xxxxxxxxxx PvP Battleground xxxxxxxxxxxx	 	
				if (optionLink == "sPvPPlanet" and playerObj:getFactionStanding("imperial") >= 70) then
	        		        playerObj:decreaseFactionStanding("imperial",50)
            				player:switchZone("kaas", 0.0, 0.0, 0.0, 0)
				elseif (optionLink == "sPvPPlanet" and playerObj:getFactionStanding("imperial") < 70) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end				
				-- xxxxxxxxxx Dantooine xxxxxxxxxxxx	 	
				if (optionLink == "sDantooine" and playerObj:getFactionStanding("imperial") >= 70) then
	        		        playerObj:decreaseFactionStanding("imperial",50)
            				player:switchZone("dantooine",-4227, 3.0, -2383.4, 0 )
				elseif (optionLink == "sDantooine" and playerObj:getFactionStanding("imperial") < 70) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end				
				-- xxxxxxxxxx Talus xxxxxxxxxxxx	 	
				if (optionLink == "sTalus_imp" and playerObj:getFactionStanding("imperial") >= 70) then
	        		        playerObj:decreaseFactionStanding("imperial",50)
            				player:switchZone("talus",-2185.8, 20.0, 2298.1, 0 )
				elseif (optionLink == "sTalus_imp" and playerObj:getFactionStanding("imperial") < 70) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end
				-- xxxxxxxxxx Corellia xxxxxxxxxxxx	
				if (optionLink == "sCorellia_cnet" and playerObj:getFactionStanding("imperial") >= 120) then
				    playerObj:decreaseFactionStanding("imperial",100)
				    player:switchZone("corellia",138, 28, -4704,0)
				elseif (optionLink == "sCorellia_cnet" and playerObj:getFactionStanding("imperial") < 120) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end

				if (optionLink == "sCorellia_stronghold" and playerObj:getFactionStanding("imperial") >= 120) then
                        		 playerObj:decreaseFactionStanding("imperial",100)
	                                 player:switchZone("corellia",4614, 25, -5767,0)
				elseif (optionLink == "sCorellia_stronghold" and playerObj:getFactionStanding("imperial") < 120) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end

				-- xxxxxxxxxx Naboo xxxxxxxxxxxx	
				if (optionLink == "sNaboo_emporer" and playerObj:getFactionStanding("imperial") >= 120) then
				    playerObj:decreaseFactionStanding("imperial",100)
				    player:switchZone("naboo",2442, 292, -3888,0)
				elseif (optionLink == "sNaboo_emporer" and playerObj:getFactionStanding("imperial") < 120) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end

				-- xxxxxxxxxx Dathomir xxxxxxxxxxxx	
				if (optionLink == "sDathomir_restricted" and playerObj:getFactionStanding("imperial") >= 520) then
				    playerObj:decreaseFactionStanding("imperial",500)
				    player:switchZone("dathomir",-6228, 120, 942,0)
				elseif (optionLink == "sDathomir_restricted" and playerObj:getFactionStanding("imperial") < 520) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end

				-- xxxxxxxxxx Yavin4 xxxxxxxxxxxx	
				if (optionLink == "sYavin4" and playerObj:getFactionStanding("imperial") >= 520) then
				    playerObj:decreaseFactionStanding("imperial",500)
				    player:switchZone("yavin4", 5073.7, 78.9, 310.1,0)
				elseif (optionLink == "sYavin4" and playerObj:getFactionStanding("imperial") < 520) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end				

				-- xxxxxxxxxx Rori xxxxxxxxxxxx	
				if (optionLink == "sRori_impencamp" and playerObj:getFactionStanding("imperial") >= 320) then
				    playerObj:decreaseFactionStanding("imperial",300)
				    player:switchZone("rori",-5577, 76, -5626,0)
				elseif (optionLink == "sRori_impencamp" and playerObj:getFactionStanding("imperial") < 320) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end


			

			else
				--nextConversationScreen = conversation:getScreen("wrong_faction")
				creature:sendSystemMessage("You are not a member of the imperial forces")
			end 
		end
	end

    -- end of the conversation logic.
   return nextConversationScreen
end


function gcw_transit_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end
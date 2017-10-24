exar_transit_system = ScreenPlay:new {
	numberOfActs = 1,
   questString = "exar_transit_system_task",
   states = {}, 
}
spHelper = require("screenplayHelper")
registerScreenPlay("exar_transit_system", true)
local ObjectManager = require("managers.object.object_manager")
 
function exar_transit_system:start() 
   local pImpPilotCorellia = spawnMobile("dantooine", "exar_transitpilot", 60, 4565.5, 2.7, 3644.9, -7, 0 )
   local pImpPilotTalus = spawnMobile("dantooine", "exar_transitpilot", 60, 6775.9, 1.7, 3618.7, 169, 0 )
   local pImpPilotTalus2 = spawnMobile("naboo", "exar_transitpilot", 60, 3349.0, 8.0, -6157.4, 86, 0 )
   local pImpPilotTalus2 = spawnMobile("tatooine", "exar_transitpilot", 60, -3361.8, 0.0, -5988.5, 78, 0 )
   local pImpPilotTalus2 = spawnMobile("lok", "exar_transitpilot", 60, -2387.0, 12.0, 2679.4, -8, 0 )
   local pImpPilotTalus2 = spawnMobile("naboo", "exar_transitpilot", 60, 3442.0, -208.1, 6955.1, 173, 0 )
   local pImpPilotTalus2 = spawnMobile("tatooine", "exar_transitpilot", 60, -4647.4, 40.0, 5905.5, -88, 0 )
   local pImpPilotTalus2 = spawnMobile("corellia", "exar_transitpilot", 60, 3016.6, 35.8, 3277.6, -94, 0 )
   local pImpPilotTalus2 = spawnMobile("rori", "exar_transitpilot", 60, 7338.1, 78.2, 5915.5, 93, 0 )
   local pImpPilotKashyyyk = spawnMobile("kashyyyk", "exar_transitpilot", 60, 1254.0, 32.1, 2752.3, -179, 0 )
   local pImpPilotTalus2 = spawnMobile("talus", "exar_transitpilot", 60, 4744.0, 85.9, -4405.0, 179, 0 )
end

exar_transit_system_convo_handler = Object:new {
   tstring = "conversation_gcw_transit"
 }
function exar_transit_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	   
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
			

			if (not creature:isAiAgent()) then
				-- xxxxxxxxxx PvP Battleground xxxxxxxxxxxx	 	
				if (optionLink == "sPvPBG")  then
            				player:switchZone("tatooine", 6209.6, 24.1, -499.0, 0)
				end				
				-- xxxxxxxxxx PvP Restuss xxxxxxxxxxxx	 	
				if (optionLink == "sPvPRestuss") then
            				player:switchZone("rori", 5286.1, 79.1, 6118.3, 0)
				end				
				-- xxxxxxxxxx Corellia xxxxxxxxxxxx	
				if (optionLink == "sCorellia_convergence") then
				    player:switchZone("corellia", 3004, 36.1, 3277.7, 0)
				end
				-- xxxxxxxxxx Dantooine xxxxxxxxxxxx	 	
				if (optionLink == "sDantooine_academy") then
				    player:switchZone("dantooine",6764.6, 3.8, 3608.4, 0)
				end
				if (optionLink == "sDantooine_storm") then
				    player:switchZone("dantooine",4556.5, 5.4, 3654.6, 0)
				end
										
				-- xxxxxxxxxx Dathomir xxxxxxxxxxxx	
				if (optionLink == "sDathomir") then
				end
				-- xxxxxxxxxx Kashyyyk xxxxxxxxxxxx	
				if (optionLink == "cKashyyyk") then
				    player:switchZone("kashyyyk", 1244.0, 24.2, 2924.0, 0)
				end
				-- xxxxxxxxxx Lok xxxxxxxxxxxx	
				if (optionLink == "sLok_tosche") then
				    player:switchZone("lok", -2384.0, 11.9, 2685.0, 0)
				end				
				-- xxxxxxxxxx Naboo xxxxxxxxxxxx	
				if (optionLink == "sNaboo_elysium") then
				    player:switchZone("naboo",3356.0, 6.1, -6143.9, 0)
			    	end
				if (optionLink == "sNaboo_haunted") then
				    player:switchZone("naboo",3443.9, -207.4, 6943.9, 0)
			    	end	
				-- xxxxxxxxxx Rori xxxxxxxxxxxx	
				if (optionLink == "sRori_kinky") then
				    player:switchZone("rori", 7347.6, 77.6, 5915.2, 0)
				end		
				-- xxxxxxxxxx Talus xxxxxxxxxxxx	 	
				if (optionLink == "sTalus_praji") then
				    player:switchZone("talus", 4755.9, 84.9, -4409.7, 0)
  				end
				-- xxxxxxxxxx Tatooine xxxxxxxxxxxx	
				if (optionLink == "sTat_arnthout")  then
				    player:switchZone("tatooine", -3361, 0, -5980,1)
				end
				if (optionLink == "sTat_lowlands")  then
				    player:switchZone("tatooine", -4665, 39.0, 5907, 1)
				end
				-- xxxxxxxxxx Yavin4 xxxxxxxxxxxx	
				if (optionLink == "sYavin4") then
				end				

			


			else
				--nextConversationScreen = conversation:getScreen("wrong_faction")
				creature:sendSystemMessage("You cant fly for some reason, grow some wings!")
			end 
		end
	end

    -- end of the conversation logic.
   return nextConversationScreen
end


function exar_transit_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

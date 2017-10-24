city_transit_system = ScreenPlay:new {
	numberOfActs = 1,
   questString = "city_transit_system_task",
   states = {}, 
}
spHelper = require("screenplayHelper")
registerScreenPlay("city_transit_system", true)
local ObjectManager = require("managers.object.object_manager")
 
function city_transit_system:start() 
   local pImpPilotCorellia = spawnMobile("corellia", "city_transitpilot", 60, 6736.2, 26.6, 4835.8, -88, 0 )
   local pImpPilotTalus = spawnMobile("talus", "city_transitpilot", 60, 1639.6, 62.2, -4620.0, 87, 0 )
   local pImpPilotTalus2 = spawnMobile("talus", "city_transitpilot", 60, -3000.8, 31.8, 3671.4, -1, 0 )
   local pImpPilotTatooine = spawnMobile("tatooine", "city_transitpilot", 60, 4808.0, 29.9, 5277.9, -92, 0 )
   local pImpPilotKashyyyk = spawnMobile("kashyyyk", "city_transitpilot", 60, -2979.2, 21.7, -2723.4, -100, 0 )
   local pImpPilotKashyyyk = spawnMobile("naboo", "city_transitpilot", 60, 5344.7, 11.5, 1378.9, 170, 0 )
   local pImpPilotKashyyyk = spawnMobile("talus", "city_transitpilot", 60, 6760.5, 5.0, -6464.7, -178, 0 )
   local pImpPilotKashyyyk = spawnMobile("talus", "city_transitpilot", 60, 852.0, 20.0, -5688.0, 0, 0 )
   local pImpPilotKashyyyk = spawnMobile("naboo", "city_transitpilot", 60, -4366.6, -196.5, 5911.4, -5, 0 )
   local pImpPilotCorellia = spawnMobile("corellia", "city_transitpilot", 60, 1595.9, 11.3, -3792.6, -15, 0 )
   local pImpPilotRori = spawnMobile("rori", "city_transitpilot", 60, 3853.4, 108.0, 4944.4, -177, 0 )
   local pImpPilotKashyyyk = spawnMobile("naboo", "city_transitpilot", 60, -4595.7, 11.8, 2999.7, 0, 0 )
  local pImpPilotNaboo = spawnMobile("naboo", "city_transitpilot", 60, -1079.4, 12.1, -6627.9, -101, 0 )
   local pImpPilotDantooine = spawnMobile("dantooine", "city_transitpilot", 60, -6813.2, 0.2, -5018.3, -91, 0 )
   local pImpPilotDantooine = spawnMobile("dantooine", "city_transitpilot", 60, -4777.7, 11.7, 6858.9, 101, 0 )
   local pImpPilotDantooine = spawnMobile("dantooine", "city_transitpilot", 60, 561.1, 3.0, -6696.6, -3, 0 )
   
end

city_transit_system_convo_handler = Object:new {
   tstring = "conversation_gcw_transit"
 }
function city_transit_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	   
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
				if (optionLink == "sCorellia_cartelis") then
				    player:switchZone("corellia",6736, 0, 4835, 0)
				end
				if (optionLink == "sCorellia_whipit") then
				    player:switchZone("corellia",1596, 10, -3777, 0)
				end
				-- xxxxxxxxxx Dantooine xxxxxxxxxxxx	 	
				if (optionLink == "sDantooine_funky") then
				    player:switchZone("dantooine", -6813, 0.2, -5018, 0)
				end
				if (optionLink == "sDantooine_brethren") then
				    player:switchZone("dantooine", -4776.1, 11.7, 6858.7, 0)
				end
				if (optionLink == "sDantooine_river") then
				    player:switchZone("dantooine", 561.1, 3.0, -6695.4, 0)
				end
				-- xxxxxxxxxx Dathomir xxxxxxxxxxxx	
				if (optionLink == "sDathomir") then
				end
				-- xxxxxxxxxx Kashyyyk xxxxxxxxxxxx	
				if (optionLink == "cKashyyyk") then
				    player:switchZone("kashyyyk",-2981, 0, -2729, 0)
				end
				-- xxxxxxxxxx Lok xxxxxxxxxxxx	
				if (optionLink == "sLok") then
				end				
				-- xxxxxxxxxx Naboo xxxxxxxxxxxx	
				if (optionLink == "sNaboo_lake") then
				    player:switchZone("naboo",5332, 10.3, 1356, 0)
			    	end
				if (optionLink == "sNaboo_haven") then
				    player:switchZone("naboo",-4367, -196.2, 5925, 0)
			    	end
				if (optionLink == "sNaboo_final") then
				    player:switchZone("naboo",-4622, 11.2, 3006, 0)
			    	end
				if (optionLink == "sNaboo_oblivion") then
				    player:switchZone("naboo", -1091, 12.0, -6627, 0)
				end					
				-- xxxxxxxxxx Rori xxxxxxxxxxxx	
				if (optionLink == "sRori") then
				    player:switchZone("rori",3900, 108.0, 4931, 0)	
				end		
				-- xxxxxxxxxx Talus xxxxxxxxxxxx	 	
				if (optionLink == "sTal_ald") then
            				player:switchZone("talus",1621, 0, -4576, 0 )
				end
				if (optionLink == "sTal_evo") then
            				player:switchZone("talus",-3063, 0, 3720, 0 )
				end
				if (optionLink == "sTal_beach") then
            				player:switchZone("talus",6760.4, 3.4, -6471, 0 )
				end
				if (optionLink == "sTal_desolation") then
            				player:switchZone("talus",852.4, 19.9, -5684.8, 0 )
				end
				-- xxxxxxxxxx Tatooine xxxxxxxxxxxx	
				if (optionLink == "sTatooine_tombstone")  then
				    player:switchZone("tatooine", 4808, 0, 5275,0)
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


function city_transit_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

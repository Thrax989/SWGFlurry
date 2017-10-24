zen_transit_system = ScreenPlay:new {
	numberOfActs = 1,
   questString = "zen_transit_system_task",
   states = {}, 
}
spHelper = require("screenplayHelper")
registerScreenPlay("zen_transit_system", true)
local ObjectManager = require("managers.object.object_manager")
 
function zen_transit_system:start() 
   local pImpPilotCorellia = spawnMobile("naboo", "zen_transitpilot", 60, 180.1, 13.1, 1799.6, 174, 0 )
   local pImpPilotTalus = spawnMobile("corellia", "zen_transitpilot", 60, -4010.9, 26.0, 6138.7, 162, 0 )
   local pImpPilotTalus2 = spawnMobile("talus", "zen_transitpilot", 60, -6085.0, 39.3, 634.9, 173, 0 )
   local pImpPilotTatooine = spawnMobile("dantooine", "zen_transitpilot", 60, 689.1, 4.0, -218.0, 83, 0 )
   local pImpPilotTalus = spawnMobile("corellia", "zen_transitpilot", 60, 2412.0, 32.8, -1134.0, 4, 0 )
    
end

zen_transit_system_convo_handler = Object:new {
   tstring = "conversation_gcw_transit"
 }

function zen_transit_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	   
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
				if (optionLink == "sCorellia_skyfork") then
				    player:switchZone("corellia", -4010.9, 24.9, 6131.0, 0)
				end
				if (optionLink == "sCorellia_point") then
				    player:switchZone("corellia",-219, 22.2, -5803, 0)
				end

				if (optionLink == "sCorellia_upinsmoke") then
				    player:switchZone("corellia",1777, 33.0, 3817, 0)
				end

				if (optionLink == "sCorellia_cascades") then
				    player:switchZone("corellia",5371, 36.5, 4838, 0)
				end
				if (optionLink == "sCorellia_citadel") then
				    player:switchZone("corellia", 2412, 31.8, -1122, 0)
				end
				-- xxxxxxxxxx Dantooine xxxxxxxxxxxx	 	
				if (optionLink == "sDantooine_mortuary") then
				    player:switchZone("dantooine", 700.0, 3.0, -218.3, 0)
				end	
				if (optionLink == "sDantooine_phalanx") then
				    player:switchZone("dantooine", 4163.9, 12.6, -2388.6, -177)	
end	
				-- xxxxxxxxxx Dathomir xxxxxxxxxxxx	
				if (optionLink == "sDathomir") then
				end
				-- xxxxxxxxxx Kashyyyk xxxxxxxxxxxx	
				if (optionLink == "cKashyyyk") then
				end
				-- xxxxxxxxxx Lok xxxxxxxxxxxx	
				if (optionLink == "sLok_FortCMN") then
				    player:switchZone("lok",-1051, 12.0, -4000, 0)	
				end

				if (optionLink == "sLok_PriTown") then
				    player:switchZone("lok",-7415, 92.0, 3607, 0)	
				end

				if (optionLink == "sLok_core") then
				    player:switchZone("lok",-2250, 12.0, -4188, 0)	
				end
				
				-- xxxxxxxxxx Naboo xxxxxxxxxxxx	
				if (optionLink == "sNaboo_nirvana") then
				    player:switchZone("naboo",179.6, 13.3, 1795.4, 0)
			    	end
				if (optionLink == "sNaboo_Crytown") then
				    player:switchZone("naboo",-6074, 19.0, 3071, 0)
				end				
				-- xxxxxxxxxx Rori xxxxxxxxxxxx	
				if (optionLink == "sRori_Gotham") then
				    player:switchZone("rori",7280, 79.3, 4791, 0)	
				end		
				-- xxxxxxxxxx Talus xxxxxxxxxxxx	 	
				if (optionLink == "sTal_garden") then
            				player:switchZone("talus",-6085.2, 39.7, 627.6, 0)
				end
				if (optionLink == "sNaboo_axis") then
				    player:switchZone("naboo",-6948.1, 9.5, 3508.9, -89)
			    	end
				-- xxxxxxxxxx Tatooine xxxxxxxxxxxx	
				if (optionLink == "sTat_lost")  then
				    player:switchZone("tatooine", 2463.0, 2.0, 4740,0)
				end
				if (optionLink == "sTat_sands")  then
				    player:switchZone("tatooine", -5361.1, 8.0, 2757.0, 0)
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


function zen_transit_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

cmn_transit_system = ScreenPlay:new {
	numberOfActs = 1,
   questString = "cmn_transit_system_task",
   states = {}, 
}
spHelper = require("screenplayHelper")
registerScreenPlay("cmn_transit_system", true)
local ObjectManager = require("managers.object.object_manager")
 
function cmn_transit_system:start() 
   local pImpPilotNaboo = spawnMobile("naboo", "cmn_transitpilot", 60, -6075.8, 19.0, 3071.9, 170, 0 )
   local pImpPilotLok = spawnMobile("lok", "cmn_transitpilot", 60, -7415.5, 92.0, 3603.9, -102, 0 )
   local pImpPilotLok = spawnMobile("lok", "cmn_transitpilot", 60, -1035.0, 12.2, -3980.8, 90, 0 )
   local pImpPilotCorellia = spawnMobile("corellia", "cmn_transitpilot", 60, -159.9, 24.3, -5864.0, -14, 0 )
   local pImpPilotCorellia = spawnMobile("corellia", "cmn_transitpilot", 60, 1780.2, 33.1, 3840.4, 165, 0 )
   local pImpPilotTatooine = spawnMobile("tatooine", "cmn_transitpilot", 60, 2438.2, 2.0, 4742.9, -6, 0 )
   local pImpPilotRori = spawnMobile("rori", "cmn_transitpilot", 60, 7225.4, 76.0, 4897.6, 166, 0 )
   local pImpPilotCorellia = spawnMobile("corellia", "cmn_transitpilot", 60, 5379.2, 36.6, 4838.0, -95, 0 )
   local pImpPilotLok = spawnMobile("lok", "cmn_transitpilot", 60, -2231.5, 12.0, -4188.3, -89, 0 )
   local pImpPilotDantooine = spawnMobile("dantooine", "cmn_transitpilot", 60, 4151.0, 14.7, -2403.0, 0, 0 )
   local pImpPilotTatooine = spawnMobile("tatooine", "cmn_transitpilot", 60, -5368.0, 8.0, 2751.0, 96, 0 )
   local pImpPilotNaboo = spawnMobile("naboo", "cmn_transitpilot", 60, -6939.9, 12.8, 3491.9, 0, 0 )
   local pImpPilotNaboo = spawnMobile("naboo", "cmn_transitpilot", 60, -6512.5, -192.8, 6743.3, -1, 0 )

end

cmn_transit_system_convo_handler = Object:new {
   tstring = "conversation_gcw_transit"
 }
function cmn_transit_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	   
   -- Assign the player to variable creature for use inside this function.
   local creature = LuaCreatureObject(conversingPlayer)
   -- Get the last conversation to determine whether or not we're  on the first screen
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
				-- xxxxxxxxxx Tatooine xxxxxxxxxxxx	
				if (optionLink == "sTat_lost")  then
				    player:switchZone("tatooine", 2463.0, 2.0, 4740,0)
				end
				if (optionLink == "sTat_sands")  then
				    player:switchZone("tatooine", -5361.1, 8.0, 2757.0, 168)
				end
				-- xxxxxxxxxx PvP Battleground xxxxxxxxxxxx	 	
				if (optionLink == "sPvPBG")  then
            				player:switchZone("tatooine", 6209.6, 24.1, -499.0, 0)
				end				
				-- xxxxxxxxxx PvP Restuss xxxxxxxxxxxx	 	
				if (optionLink == "sPvPRestuss") then
            				player:switchZone("rori", 5286.1, 79.1, 6118.3, 0)
				end				
				-- xxxxxxxxxx Dantooine xxxxxxxxxxxx	 	
				if (optionLink == "sDantooine_mortuary") then
				    player:switchZone("dantooine", 700.0, 3.0, -218.3, 0)
				end	
				if (optionLink == "sDantooine_phalanx") then
				    player:switchZone("dantooine", 4163.9, 12.6, -2388.6, -177)
				end	
					

				-- xxxxxxxxxx Talus xxxxxxxxxxxx	 	
				if (optionLink == "sTal_garden") then
            				player:switchZone("talus",-6085.2, 39.7, 627.6, 0)
				end

				-- xxxxxxxxxx Corellia xxxxxxxxxxxx	
				if (optionLink == "sCorellia_point") then
				    player:switchZone("corellia",-219, 22.2, -5803, 0)
				end

				if (optionLink == "sCorellia_upinsmoke") then
				    player:switchZone("corellia",1777, 33.0, 3817, 0)
				end

				if (optionLink == "sCorellia_cascades") then
				    player:switchZone("corellia",5371, 36.5, 4838, 0)
				end
				if (optionLink == "sCorellia_skyfork") then
				    player:switchZone("corellia", -4010.9, 24.9, 6131.0, 0)
				end

				-- xxxxxxxxxx Kashyyyk xxxxxxxxxxxx	
				if (optionLink == "cKashyyyk") then
				end

				-- xxxxxxxxxx Naboo xxxxxxxxxxxx	
				if (optionLink == "sNaboo_Crytown") then
				    player:switchZone("naboo",-6074, 19.0, 3071, 0)
				end
				if (optionLink == "sNaboo_nirvana") then
				    player:switchZone("naboo",179.6, 13.3, 1795.4, 0)
			    	end
				if (optionLink == "sNaboo_axis") then
				    player:switchZone("naboo",-6948.1, 9.5, 3508.9, -89)
			    	end
                                if (optionLink == "sNaboo_Aurora") then
				    player:switchZone("naboo",-6511.7, -192.7, 6744.5, -1)
				end

				-- xxxxxxxxxx Dathomir xxxxxxxxxxxx	
				if (optionLink == "sDathomir") then
				end

				-- xxxxxxxxxx Yavin4 xxxxxxxxxxxx	
				if (optionLink == "sYavin4") then
				end				

				-- xxxxxxxxxx Rori xxxxxxxxxxxx	
				if (optionLink == "sRori_Gotham") then
				    player:switchZone("rori",7225, 75.7, 4890, 0)	
				end

				-- xxxxxxxxxx Lok xxxxxxxxxxxx	
				if (optionLink == "sLok_FortCMN") then
				    player:switchZone("lok",-1051, 12.0, -4000, 0)	
				end

				if (optionLink == "sLok_PriTown") then
				    player:switchZone("lok",-7415, 92.0, 3607, 0)	
				end

				if (optionLink == "sLok_core") then
				    player:switchZone("lok",-2235, 12.0, -4188, 0)	
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


function cmn_transit_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

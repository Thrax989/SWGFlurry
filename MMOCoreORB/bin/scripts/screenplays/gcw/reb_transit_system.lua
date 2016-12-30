reb_transit_system = ScreenPlay:new {
	numberOfActs = 1,
   questString = "reb_transit_system_task",
   states = {}, 
}
spHelper = require("screenplayHelper")
registerScreenPlay("reb_transit_system", true)
local ObjectManager = require("managers.object.object_manager")
 
function reb_transit_system:start() 
   local pImpPilotCorellia = spawnMobile("corellia", "reb_transitpilot", 60, -155.7, 28.0, -4704.1, 83, 0 )

--   local pImpPilotNaboo = spawnMobile("Naboo", "imp_transitpilot", 60, 2445, 292, -3888, 35, 0 )
--   local pImpPilotYavin4 = spawnMobile("Yavin4", "imp_transitpilot", 60, 4044, 37.0, -6250, 35, 0 )

end

reb_transit_system_convo_handler = Object:new {
   tstring = "conversation_reb_transit"
 }
function reb_transit_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	   
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
			local isImperial = creature:isRebel()
			local isRebel = creature:isRebel()
			local isImperial = creature:isRebel()
			local playerObjPointer = creature:getPlayerObject()
			local playerObj = LuaPlayerObject(playerObjPointer)
			local player = LuaSceneObject(conversingPlayer)
			

--  local pImpPilotCorellia = spawnMobile("Corellia", "imp_transitpilot", 60, -136.1, 28.0, -4683.9, 174, 0 )
--   local pImpPilotCoro = spawnMobile("Corellia", "imp_transitpilot", 60, 135, 28.0, -4705, 35, 0 )


			if (creature:getFaction() == 370444368) then
				-- xxxxxxxxxx Tatooine xxxxxxxxxxxx	
				if (optionLink == "sTatooine_anchorhead" and playerObj:getFactionStanding("rebel") >= 70) then
			        playerObj:decreaseFactionStanding("rebel",50)
				    player:switchZone("tatooine", 74.4, 52.0, -5335.1,0)
				elseif (optionLink == "sTatooine_anchorhead" and playerObj:getFactionStanding("rebel") < 70) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end
				-- xxxxxxxxxx PvP Battleground xxxxxxxxxxxx	 	
				if (optionLink == "sPvE" and playerObj:getFactionStanding("rebel") >= 70) then
	        		        playerObj:decreaseFactionStanding("rebel",50)
            				player:switchZone("taanab", -285.343, 35, 4859.14, 0)
				elseif (optionLink == "sPvE" and playerObj:getFactionStanding("rebel") < 70) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end				
				-- xxxxxxxxxx Dantooine xxxxxxxxxxxx	 	
				if (optionLink == "sDantooine" and playerObj:getFactionStanding("rebel") >= 70) then
	        		        playerObj:decreaseFactionStanding("rebel",50)
            				player:switchZone("dantooine",-606.3, 3.0, 2505.8, 0 )
				elseif (optionLink == "sDantooine" and playerObj:getFactionStanding("rebel") < 70) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end				
				-- xxxxxxxxxx Talus xxxxxxxxxxxx	 	
				if (optionLink == "sTalus_auk" and playerObj:getFactionStanding("rebel") >= 70) then
	        		        playerObj:decreaseFactionStanding("rebel",50)
            				player:switchZone("talus", 5917.5, 48.5, 4617.5, 0 )
				elseif (optionLink == "sTalus_auk" and playerObj:getFactionStanding("rebel") < 70) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end
				-- xxxxxxxxxx Corellia xxxxxxxxxxxx	
				if (optionLink == "sCorellia_cnet" and playerObj:getFactionStanding("rebel") >= 120) then
				    playerObj:decreaseFactionStanding("rebel",100)
				    player:switchZone("corellia", -26.9, 28, -4210.0,0)
				elseif (optionLink == "sCorellia_cnet" and playerObj:getFactionStanding("rebel") < 120) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end

				if (optionLink == "sCorellia_hideout" and playerObj:getFactionStanding("rebel") >= 120) then
                        		 playerObj:decreaseFactionStanding("rebel",100)
	                                 player:switchZone("corellia", -6543.9, 398.0, 5975.7,0)
				elseif (optionLink == "sCorellia_hideout" and playerObj:getFactionStanding("rebel") < 120) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end

				-- xxxxxxxxxx Naboo xxxxxxxxxxxx	
				if (optionLink == "sNaboo_moenia" and playerObj:getFactionStanding("rebel") >= 75) then
				    playerObj:decreaseFactionStanding("rebel",50)
				    player:switchZone("naboo",4827.2, 4.2, -4668.7,0)
				elseif (optionLink == "sNaboo_moenia" and playerObj:getFactionStanding("rebel") < 75) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end

				-- xxxxxxxxxx Dathomir xxxxxxxxxxxx	
				if (optionLink == "sDathomir_restricted" and playerObj:getFactionStanding("rebel") >= 520) then
				    playerObj:decreaseFactionStanding("rebel",500)
				    player:switchZone("dathomir",-6228, 120, 942,0)
				elseif (optionLink == "sDathomir_restricted" and playerObj:getFactionStanding("rebel") < 520) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end

				-- xxxxxxxxxx Yavin4 xxxxxxxxxxxx	
				if (optionLink == "sYavin4" and playerObj:getFactionStanding("rebel") >= 520) then
				    playerObj:decreaseFactionStanding("rebel",500)
				    player:switchZone("yavin4", -5576.4, 87.9, 4903.4,0)
				elseif (optionLink == "sYavin4" and playerObj:getFactionStanding("rebel") < 520) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end				

				-- xxxxxxxxxx Planet Battleground xxxxxxxxxxxx	 	
				if (optionLink == "sPlanetPvP" and playerObj:getFactionStanding("rebel") >= 70) then
	        		        playerObj:decreaseFactionStanding("rebel",50)
            				player:switchZone("kaas", 117, 25.0, 115.0, 0)
				elseif (optionLink == "sPlanetPvP" and playerObj:getFactionStanding("rebel") < 70) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end	

				-- xxxxxxxxxx Rori xxxxxxxxxxxx	
				if (optionLink == "sRori_reb" and playerObj:getFactionStanding("rebel") >= 75) then
				    playerObj:decreaseFactionStanding("rebel",50)
				    player:switchZone("rori", 3691.1, 96.0, -6432.4,0)
				elseif (optionLink == "sRori_reb" and playerObj:getFactionStanding("rebel") < 75) then
					nextConversationScreen = conversation:getScreen("notenough_faction")
					creature:sendSystemMessage("You dont have enough FP")
				end


			

			else
				--nextConversationScreen = conversation:getScreen("wrong_faction")
				creature:sendSystemMessage("You are not a member of the rebel alliance")
			end 
		end
	end

    -- end of the conversation logic.
   return nextConversationScreen
end


function reb_transit_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end
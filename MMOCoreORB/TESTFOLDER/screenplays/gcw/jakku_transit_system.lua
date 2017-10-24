jakku_transit_system = ScreenPlay:new {
	numberOfActs = 1,
   questString = "jakku_transit_system_task",
   states = {},
}
spHelper = require("screenplayHelper")
registerScreenPlay("jakku_transit_system", true)
local ObjectManager = require("managers.object.object_manager")

function jakku_transit_system:start()
   local pImpPilotCorellia = spawnMobile("tatooine", "jakku_pilot", 120, 25.3, -0.9, 9.8, -105, 1082877 )
   local pImpPilotTalus = spawnMobile("jakku", "jakku_pilot", 60, 4349, 8, -5122, -45, 0 )
   local pImpPilotTalus = spawnMobile("jakku", "jakku_pilot", 60, -5710, 47, 5502, -35, 0 )
   local pImpPilotTalus = spawnMobile("jakku", "jakku_pilot", 60, -5988, 37, 6108, 179, 0 )



end

jakku_transit_system_convo_handler = Object:new {
   tstring = "conversation_gcw_transit"
 }
function jakku_transit_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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
				-- xxxxxxxxxx Jakku xxxxxxxxxxxx
				if (optionLink == "sNiima_Outpost")  then
            				player:switchZone("jakku", 4341.6, 8, -5103.3, 0)
				end
				-- xxxxxxxxxx Tatooine xxxxxxxxxxxx
				if (optionLink == "sTat_Eisley")  then
				    player:switchZone("tatooine", -7.2, -0.9, 10.1,1082877)
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


function jakku_transit_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

mensix_transit_system = ScreenPlay:new {
	numberOfActs = 1,
   questString = "mensix_transit_system_task",
   states = {},
}
spHelper = require("screenplayHelper")
registerScreenPlay("mensix_transit_system", true)
local ObjectManager = require("managers.object.object_manager")

function mensix_transit_system:start()
    local pImpPilotCorellia = spawnMobile("mustafar", "mensix_port_guard", 120, 391, 226, -1348, -90, 0 )




end

mensix_transit_system_convo_handler = Object:new {
   tstring = "conversation_gcw_transit"
 }
function mensix_transit_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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

				--mensix facility other side of mountain entrance door
			if (not creature:isAiAgent()) then
				if (optionLink == "sEnter_Facility")  then
            				player:switchZone("mustafar", -73.1,22.5,-113.1,281475795376213)
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


function mensix_transit_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

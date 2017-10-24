droid_transit_system = ScreenPlay:new {
	numberOfActs = 1,
   questString = "droid_transit_system_task",
   states = {},
}
spHelper = require("screenplayHelper")
registerScreenPlay("droid_transit_system", true)
local ObjectManager = require("managers.object.object_manager")

function droid_transit_system:start()
    local pDroidOutsideMustafar = spawnMobile("mustafar", "droid_transitpilot", 120, 3477.3, 65.3, -1015.1, -48, 0 )

end

droidfactory_transit_system_convo_handler = Object:new {
   tstring = "conversation_gcw_transit"
 }
function droidfactory_transit_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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
				-- xxxxxxxxxx Mustafar xxxxxxxxxxxx
				if (optionLink == "sDroid_Factory")  then
				    player:switchZone("mustafar", 0.1, 0.0, 4.8, 281475789827823)
				end

				if (optionLink == "sMustafar_talrus") then
				    player:switchZone("mustafar",1560.9, 44.7, -786.5, 0)	
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


function droidfactory_transit_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

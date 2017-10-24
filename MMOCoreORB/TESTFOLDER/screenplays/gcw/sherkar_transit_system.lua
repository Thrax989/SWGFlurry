sherkar_transit_system = ScreenPlay:new {
	numberOfActs = 1,
   questString = "sherkar_transit_system_task",
   states = {}, 
}
spHelper = require("screenplayHelper")
registerScreenPlay("sherkar_transit_system", true)
local ObjectManager = require("managers.object.object_manager")
 
function sherkar_transit_system:start() 
   local pImpPilotNaboo = spawnMobile("mustafar", "sherkar_transitpilot", 60, 816.5, 93.3, 1284.3, 164, 0 )
   local pImpPilotLok = spawnMobile("mustafar", "sherkar_transitpilot", 60, -22.9, 0.4, 9.5, 161, 281475788742312 )


end

sherkar_transit_system_convo_handler = Object:new {
   tstring = "conversation_gcw_transit"
 }
function sherkar_transit_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	   
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

				-- xxxxxxxxxx Mustafar xxxxxxxxxxxx	
				if (optionLink == "sMustafar_Sher'Kar") then
				    player:switchZone("mustafar",-20, -0.9, 4.7, 281475788742312)	
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


function sherkar_transit_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

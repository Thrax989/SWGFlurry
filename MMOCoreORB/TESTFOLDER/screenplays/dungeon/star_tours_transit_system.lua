star_tours_transit_system = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "star_tours_transit_system_task",
   states = {}, 
}

registerScreenPlay("star_tours_transit_system", true)

function star_tours_transit_system:start()
	if (isZoneEnabled("hoth")) then 
		spawnMobile("hoth", "star_tours_pilot", 120, -432, 36.5, -958.4, -104, 0 )
	end
end

star_tours_transit_system_convo_handler = Object:new {
   tstring = "conversation_hoth_eb"
 }
function star_tours_transit_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	   

   local creature = LuaCreatureObject(conversingPlayer)

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
		 if ( creature ~= nil ) then
			local credits = creature:getCashCredits()
			local player = LuaSceneObject(conversingPlayer)
			if ( player ~= nil ) then
				if (optionLink == "sEcho_Base" and credits >= 10000) then
    	  			creature:subtractCashCredits(10000)				
				    player:switchZone("hoth",-268.2, 75.9, 487.5, 281475060608852)
				elseif (optionLink == "sEcho_Base" and credits < 10000) then
					nextConversationScreen = conversation:getScreen("insufficient_funds")
					creature:sendSystemMessage("You dont have enough credits to take the tour!")
				end
			end
		end
	end
end
	

    -- end of the conversation logic.
   return nextConversationScreen
end


function star_tours_transit_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end


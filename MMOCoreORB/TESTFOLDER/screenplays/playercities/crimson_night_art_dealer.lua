crimson_merchant_art = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "crimson_merchant_art_task",
   states = {}, 
}

registerScreenPlay("crimson_merchant_art", true)

function crimson_merchant_art:start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
   local pMerchant = spawnMobile("talus", "crimson_merchant_art", 1, -2963, 7.9, -2108.9, 325, 0 )
 end

crimson_merchant_art_convo_handler = Object:new {
   tstring = "myconversation"
 }

function crimson_merchant_art_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
         local credits = creature:getCashCredits()
         local pInventory = creature:getSlottedObject("inventory")
         local inventory = LuaSceneObject(pInventory)
         
         -- Take action when the player makes a purchase.
         if (inventory:hasFullContainerObjects() == true) then
            -- Bail if the player doesn't have enough space in their inventory.
            -- Plays a chat box message from the NPC as well as a system message.
            nextConversationScreen = conversation:getScreen("insufficient_space")
            creature:sendSystemMessage("You do not have enough inventory space")   
         elseif (optionLink == "buypainting" and credits < 1000000) then            
            -- Bail if the player doesn't have enough cash on hand.
            -- Plays a chat box message from the NPC as well as a system message.
            nextConversationScreen = conversation:getScreen("insufficient_funds")
            creature:sendSystemMessage("You have insufficient funds")
         elseif (optionLink == "buypainting" and credits >= 1000000) then
            -- Take 10,000 credits from the player's cash on hand and give player a speederbike.
            creature:subtractCashCredits(1000000)
            local pItem = giveItem(pInventory, "object/tangible/painting/painting_bioengineer_orange.iff", -1)
         end
      end
   end
   -- end of the conversation logic.
   return nextConversationScreen
   
end


function crimson_merchant_art_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

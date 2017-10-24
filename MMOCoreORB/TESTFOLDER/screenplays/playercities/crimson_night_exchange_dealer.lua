local ObjectManager = require("managers.object.object_manager")

crimson_merchant_exchange = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "crimson_merchant_exchange_task",
   states = {}, 
}

registerScreenPlay("crimson_merchant_exchange", true)

function crimson_merchant_exchange:start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
   local pMerchant = spawnMobile("talus", "crimson_merchant_exchange", 1, -2967, 7.4, -2079, 35, 0 )

end

crimson_merchant_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function crimson_merchant_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
         local containerSize = inventory:getContainerObjectsSize()
         local itemCounter = 0
         local i = 0 
         local DeleteItems = 0

         for i = 0, containerSize - 1, 1 do
        	 local pInvObj = inventory:getContainerObject(i)
	         local InvObj = LuaSceneObject(pInvObj)
	        	 -- Get Objectnames from Each Item and check if its the choosen Item in this case a generic tool :P
	         	if (InvObj:getObjectName() == "droid_battery")   then
	         		itemCounter = itemCounter + 1
	         	end
	     end
	  
         -- Take action when the player makes a purchase.
         if (inventory:hasFullContainerObjects() == true) then
	            -- Bail if the player doesn't have enough space in their inventory.
	            -- Plays a chat box message from the NPC as well as a system message.
	            nextConversationScreen = conversation:getScreen("insufficient_space")
	            creature:sendSystemMessage("You do not have enough inventory space")  
	            -- check if player have the item in the inventory
	     elseif (optionLink == "tradeOption" and itemCounter < 2) then            
	            -- Bail if the player doesn't have enough cash on hand.
	            -- Plays a chat box message from the NPC as well as a system message.
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "tradeOption" and itemCounter >= 2) then
	            -- Trade the Item in and generate new Items
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_bioengineer_orange.iff", -1)
	            --Set DeleteCounter
	            DeleteItems = 2
	            -- Delete now the Items for Trade from the inventory
          end
             
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
     	    -- Get Objectnames from Each Item and check if its the choosen Item in this case a generic tool :P
		     	if (invObj:getObjectName() == "droid_battery" and DeleteItems > 0 ) then
		     		DeleteItems = DeleteItems - 1
		     		invObj:destroyObjectFromWorld()
					invObj:destroyObjectFromDatabase()
	        		printf("iamhere")
		       	end
   		  end
   		  
 	
      end
   end
   -- end of the conversation logic.
   return nextConversationScreen
   
end


function crimson_merchant_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")

shipwright_trainer_exchange = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "shipwright_trainer_exchange_task",
   states = {}, 
}

registerScreenPlay("shipwright_trainer_exchange", true)

function shipwright_trainer_exchange:start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
   local pMerchant = spawnMobile("corellia", "mandalorian_e2", 1, -134.9, 28.0, -4720.6, -94, 0)
-- 1, 12.6, -0.0, 16.9, -140, 281475109085800)
end

shipwright_trainer_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function shipwright_trainer_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
         local credits = creature:getCashCredits()
         local pInventory = creature:getSlottedObject("inventory")
         local inventory = LuaSceneObject(pInventory)
         local containerSize = inventory:getContainerObjectsSize()
         local itemCounter = 0
         local i = 0 
         local DeleteItems = 0
	 local playerObjPointer = creature:getPlayerObject()
	 local playerObj = LuaPlayerObject(playerObjPointer)
   	 local player = LuaSceneObject(conversingPlayer)	 

         for i = 0, containerSize - 1, 1 do
        	 local pInvObj = inventory:getContainerObject(i)
	         local InvObj = LuaSceneObject(pInvObj)
	        	 -- Get Objectnames from Each Item and check if its the choosen Item. (This is your token for the vendor)
	         	if (InvObj:getObjectName() == "eng_mk1")   then
	         		itemCounter = itemCounter + 1
	         	end
	     end
	  
         -- Insufficent Space
         if (inventory:isContainerFull() == true) then
	            -- Bail if the player doesn't have enough space in their inventory.
	            -- Plays a chat box message from the NPC as well as a system message.
	            nextConversationScreen = conversation:getScreen("insufficient_space")
	            creature:sendSystemMessage("You do not have enough inventory space")  
	            -- check if player have the item in the inventory

	-- Main screen selects

		-- Five Token Screen

	elseif (optionLink == "port") then
		nextConversationScreen = conversation:getScreen("port_screen")



-- OptionLink == "ID" <-- Set on previous lua
-- ItemCounter < number of tokens that item costs (Function: See's if player has less than number of tokens and if they do it sends system message "You have insufficient items")
-- ItemCounter >= number of tokens that item costs (Function: Gets player's inventory and if they have greater than or equal to number of tokens, the purchase goes through)
-- DeleteItems = number of tokens that item costs (Function: deletes the tokens from players inventory)


		-- Transport to the ISD
	     elseif (optionLink == "1" and itemCounter < 75) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 1) then
	            DeleteItems = 75
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have been granted access Shipwright, Keep those ships in the air!")
		    player:switchZone("space_corellia", -86.4, 172.1, 260.3, 281475109221065)		    

		    
          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
     	    -- Get Objectnames from Each Item and check if its the choosen Item.
		     	if (invObj:getObjectName() == "eng_mk1" and DeleteItems > 0 ) then
		     		DeleteItems = DeleteItems - 1
		     		invObj:destroyObjectFromWorld()
					invObj:destroyObjectFromDatabase()
		       	end
   		  end
   		  
 	
      end
   end
   -- end of the conversation logic.
   return nextConversationScreen
   
end


function shipwright_trainer_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end


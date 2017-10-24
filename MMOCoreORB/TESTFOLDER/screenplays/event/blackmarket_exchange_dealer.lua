local ObjectManager = require("managers.object.object_manager")

blackmarket_exchange = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "blackmarket_exchange_task",
   states = {}, 
}

registerScreenPlay("blackmarket_exchange", true)

function blackmarket_exchange:start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
   local pMerchant = spawnMobile("corellia", "blackmarket_exchange", 1, -135.2, 28, -4725.1, -88, 0 )

end

blackmarket_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function blackmarket_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	 ObjectManager.withCreatureObject(conversingPlayer, function(creature )

	 --local creature = LuaCreatureObject(conversingPlayer)	 
         local pInventory = creature:getSlottedObject("inventory")
         local inventory = LuaSceneObject(pInventory)
         local containerSize = inventory:getContainerObjectsSize()
         local itemCounter = 0
         local i = 0 
         local DeleteItems = 0

         for i = 0, containerSize - 1, 1 do
        	 local pInvObj = inventory:getContainerObject(i)
	         local InvObj = LuaSceneObject(pInvObj)
	        	 -- Get Objectnames from Each Item and check if its the choosen Item. (This is your token for the vendor)
	         	if (InvObj:getObjectName() == "socket_gem_clothing")   then
	         		itemCounter = itemCounter + 1
	         else	if (InvObj:getObjectName() == "socket_gem_armor")   then
	         		itemCounter = itemCounter + 1
				
	         	end
	     end
end
         -- Insufficent Space
         if (SceneObject(pInventory):isContainerFullRecursive()) then
	            -- Bail if the player doesn't have enough space in their inventory.
	            -- Plays a chat box message from the NPC as well as a system message.
	            nextConversationScreen = conversation:getScreen("insufficient_space")
	            creature:sendSystemMessage("You do not have enough inventory space")  
	            -- check if player have the item in the inventory

	-- Main screen selects

		-- Five Token Screen

	elseif (optionLink == "five") then
		nextConversationScreen = conversation:getScreen("five_screen")

		-- Ten Token Screen

	elseif (optionLink == "ten") then
		nextConversationScreen = conversation:getScreen("ten_screen")

		-- Seventy Token Screen

	elseif (optionLink == "seventy") then
		nextConversationScreen = conversation:getScreen("seventy_screen")


	-- 5 SEA Options

		-- 2500 credits
	     elseif (optionLink == "1" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 5) then
         	    creature:addCashCredits(2500,true)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received 2500 credits")


	-- 10 SEA Options

		-- Credits
	     elseif (optionLink == "2" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 10) then
         	    creature:addCashCredits(5000,true)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received 5000 credits")


	-- 70 SEA Options

		-- credits
	     elseif (optionLink == "3" and itemCounter < 70) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 70) then
         	    creature:addCashCredits(35000,true)
	            DeleteItems = 70
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received 35,000 credits")

		-- Imperial cape
	     elseif (optionLink == "4" and itemCounter < 70) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 70) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/cape/cape_imperial_01.iff", -1)
	            DeleteItems = 70
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Imperial Cape")

		-- Alliance cape
	     elseif (optionLink == "5" and itemCounter < 70) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 70) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/cape/cape_rebel_01.iff", -1)
	            DeleteItems = 70
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Alliance Cape")

		-- Bloodfin coin
	     elseif (optionLink == "6" and itemCounter < 70) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 70) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_coin.iff", -1)
	            DeleteItems = 70
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have recieved a Bloodfin Collectors Coin")

		-- Gold cape
	     elseif (optionLink == "7" and itemCounter < 70) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 70) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series7/wearable_gold_cape.iff", -1)
	            DeleteItems = 70
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have recieved a gold cape")

		-- Purple cape
	     elseif (optionLink == "8" and itemCounter < 70) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 70) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series7/wearable_purple_cape.iff", -1)
	            DeleteItems = 70
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have recieved a purple cape")



		-- Trandoshan Rifle Schematic
	     elseif (optionLink == "9" and credits < 70000000) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and credits >= 70000000) then
	            creature:subtractCashCredits(70000000)	     
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/trandoshan_hunter_rifle_schematic.iff", -1)
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Trandoshan Rifle Schematic")



          	end
	
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
     	    -- Get Objectnames from Each Item and check if its the choosen Item.
		     	if (invObj:getObjectName() == "socket_gem_clothing" and DeleteItems > 0 ) then
		     		DeleteItems = DeleteItems - 1
		     		invObj:destroyObjectFromWorld()
					invObj:destroyObjectFromDatabase()

		  else   	if (invObj:getObjectName() == "socket_gem_armor" and DeleteItems > 0 ) then
		     		DeleteItems = DeleteItems - 1
		     		invObj:destroyObjectFromWorld()
					invObj:destroyObjectFromDatabase()
		       	end					
		       	end
   	  end
   end)		  
 end	
  end    
      -- end of the conversation logic.
   return nextConversationScreen
   
end

function blackmarket_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

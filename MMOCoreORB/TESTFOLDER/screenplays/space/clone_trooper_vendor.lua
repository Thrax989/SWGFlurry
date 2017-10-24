local ObjectManager = require("managers.object.object_manager")

clone_trooper_vendor = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "clone_trooper_vendor",
   states = {}, 
}

registerScreenPlay("clone_trooper_vendor", true)

function clone_trooper_vendor :start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
--   local pMerchant = spawnMobile("corellia", "clone_trooper_vendor", 1, 12.6, -0.0, 16.9, -140, 281475109085800)
   local pMerchant = spawnMobile("corellia", "clone_trooper_vendor", 1, -110.3, 28.2, -4688.1, -43, 0)
end

clone_trooper_vendor_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function clone_trooper_vendor_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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

         for i = 0, containerSize - 1, 1 do
        	 local pInvObj = inventory:getContainerObject(i)
	         local InvObj = LuaSceneObject(pInvObj)
	        	 -- Get Objectnames from Each Item and check if its the choosen Item. (This is your coin for the vendor)
	         	if (InvObj:getObjectName() == "halloween_coin_n")   then
	         		itemCounter = itemCounter + 1
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

		-- Ten coin Screen

	elseif (optionLink == "ten") then
		nextConversationScreen = conversation:getScreen("ten_screen")

               -- Thirty coin Screen

	elseif (optionLink == "thirty") then
		nextConversationScreen = conversation:getScreen("thirty_screen")

		-- Fifty coin Screen

	elseif (optionLink == "fifty") then
		nextConversationScreen = conversation:getScreen("fifty_screen")

-- OptionLink == "ID" <-- Set on previous lua
-- ItemCounter < number of coins that item costs (Function: See's if player has less than number of coins and if they do it sends system message "You have insufficient items")
-- ItemCounter >= number of coins that item costs (Function: Gets player's inventory and if they have greater than or equal to number of coins, the purchase goes through)
-- DeleteItems = number of coins that item costs (Function: deletes the coins from players inventory)

	-- 10 coin Options

		-- Imperial Katarn Gloves 
	     elseif (optionLink == "1" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_gloves.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Imperial Katarn Gloves .")

		-- Imperial Katarn Belt
	     elseif (optionLink == "2" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_belt.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Imperial Katarn Belt.")

		-- Rebel Katarn Gloves
	     elseif (optionLink == "3" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_gloves.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Rebel Katarn Gloves. ")

		-- Rebel Katarn Belt
	     elseif (optionLink == "4" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_belt.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Rebel Katarn Belt.")

		-- Neutral Katarn Gloves
	     elseif (optionLink == "5" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_gloves.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Neutral Katarn Gloves. ")

               -- Neutral Katarn Belt
	     elseif (optionLink == "6" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_belt.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Neutral Katarn Belt. ")

	-- 30 coin Options

		-- Imperial Katarn R. Bracer
	     elseif (optionLink == "11" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_bracer_r.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Imperial Katarn R. Bracer.")

		-- Imperial Katarn L. Bracer
	     elseif (optionLink == "12" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_bracer_l.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Imperial Katarn L. Bracer")

		-- Rebel Katarn R. Bracer
	     elseif (optionLink == "13" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_bracer_r.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Rebel Katarn R. Bracer.")

		-- Rebel Katarn L. Bracer
	     elseif (optionLink == "14" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_bracer_l.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Rebel Katarn L. Bracer.")

		-- Neutral Katarn R. Bracer
	     elseif (optionLink == "15" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_bracer_r.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Neutral Katarn R. Bracer.")

                -- Neutral Katarn L. Bracer
	     elseif (optionLink == "16" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_bracer_l.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Neutral Katarn L. Bracer.")
		
                -- Imperial Katarn R. Bicep
	     elseif (optionLink == "17" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_bicep_r.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Imperial Katarn R. Bicep.")
		
                -- Imperial Katarn L. Bicep
	     elseif (optionLink == "18" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_bicep_l.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Imperial Katarn L. Bicep.")
		
                -- Rebel Katarn R. Bicep
	     elseif (optionLink == "19" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_bicep_r.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Rebel Katarn R. Bicep.")
		
                -- Rebel Katarn L. Bicep
	     elseif (optionLink == "20" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_bicep_l.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Rebel Katarn R. Bicep.")
		
                -- Neutral Katarn R. Bicep
	     elseif (optionLink == "21" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "21" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_bicep_r.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Neutral Katarn R. Bicep.")
		
                -- Neutral Katarn L. Bicep
	     elseif (optionLink == "42" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "42" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_bicep_l.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Neutral Katarn L. Bicep.")
		
	-- 50 coin Options

                -- Imperial Katarn Chest Plate
	     elseif (optionLink == "22" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "22" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_chest_plate.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Imperial Katarn Chest Plate.")
		
                -- Rebel Katarn Chest Plate
	     elseif (optionLink == "23" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "23" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_chest_plate.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Rebel Katarn Chest Plate.")
		
                -- Neutral Katarn Chest Plate
	     elseif (optionLink == "24" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "24" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_chest_plate.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Neutral Katarn Chest Plate.")
		
                -- Imperial Katarn Leggings
	     elseif (optionLink == "25" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "25" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_leggings.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Imperial Katarn Leggings.")
		
                -- Rebel Katarn Leggings
	     elseif (optionLink == "26" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "26" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_leggings.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Rebel Katarn Leggings.")
		
                -- Neutral Katarn Leggings
	     elseif (optionLink == "27" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "27" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_leggings.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Neutral Katarn Leggings.")
		
                -- Imperial Katarn Helmet
	     elseif (optionLink == "28" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "28" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_helmet.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Imperial Katarn Helmet.")
		
                -- Rebel Katarn Helmet
	     elseif (optionLink == "29" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "29" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_helmet.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Rebel Katarn Helmet.")

		-- Neutral Katarn Helmet
	     elseif (optionLink == "30" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "30" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_helmet.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Neutral Katarn Helmet.")

		-- Imperial Katarn Boots
	     elseif (optionLink == "31" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "31" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_boots.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Imperial Katarn Boots.")

		-- Rebel Katarn Boots
	     elseif (optionLink == "32" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "32" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_boots.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Rebel Katarn Boots.")

		-- Neutral Katarn Boots
	     elseif (optionLink == "33" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "33" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_boots.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Neutral Katarn Boots.")

          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
     	    -- Get Objectnames from Each Item and check if its the choosen Item.
		     	if (invObj:getObjectName() == "halloween_coin_n" and DeleteItems > 0 ) then
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


function clone_trooper_vendor_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

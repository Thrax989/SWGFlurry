local ObjectManager = require("managers.object.object_manager")

musty_boss_vendor = ScreenPlay:new {
   numberOfActs = 1,
   questString = "musty_boss_vendor",
   states = {},
}

registerScreenPlay("musty_boss_vendor", true)

function musty_boss_vendor :start()
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
--   local pMerchant = spawnMobile("corellia", "papa_leone", 1, -159.9, 28, -4734.5, 22, 0 )
   local pMerchant = spawnMobile("mustafar", "mustafar_boss_dealer", 1, 381, 225, -1353, -90, 0 )
end

musty_boss_vendor_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function musty_boss_vendor_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	         	if (InvObj:getObjectName() == "fs_buff_item")   then
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
		-- Five coin Screen

	elseif (optionLink == "five") then
		nextConversationScreen = conversation:getScreen("five_screen")

		-- Ten coin Screen

	elseif (optionLink == "ten") then
		nextConversationScreen = conversation:getScreen("ten_screen")


-- OptionLink == "ID" <-- Set on previous lua
-- ItemCounter < number of coins that item costs (Function: See's if player has less than number of coins and if they do it sends system message "You have insufficient items")
-- ItemCounter >= number of coins that item costs (Function: Gets player's inventory and if they have greater than or equal to number of coins, the purchase goes through)
-- DeleteItems = number of coins that item costs (Function: deletes the coins from players inventory)

         -- 5 Coin Options

		-- Fat Bottle
	     elseif (optionLink == "1" and itemCounter < 5) then
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/gcw/gcw_weapon_rack_01.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Weapon Rack Style 1.")

		-- Pear Bottle
	     elseif (optionLink == "2" and itemCounter < 5) then
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/gcw/gcw_weapon_rack_02.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Weapon Rack Style 2.")



	-- 10 coin Options

		-- Victory Painting
	     elseif (optionLink == "3" and itemCounter < 10) then
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/musty_knuckler_schematic.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Mustafarian Knuckler Schematic.")

		-- wanted trando
	     elseif (optionLink == "4" and itemCounter < 10) then
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/2h_obsidian_schematic.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Obsidian 2h Sword Schematic.")

		-- Smoking Ad
	     elseif (optionLink == "5" and itemCounter < 10) then
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/musty_firestar_schematic.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Mustafarian Firestar Carbine Schematic.")

		-- Palowick Ad
	     elseif (optionLink == "6" and itemCounter < 10) then
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/mustafar_ancient_saber_schematic.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received  Adeen's Ancient Lightsaber Schematic.")


          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
     	    -- Get Objectnames from Each Item and check if its the choosen Item.
		     	if (invObj:getObjectName() == "fs_buff_item" and DeleteItems > 0 ) then
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


function musty_boss_vendor_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

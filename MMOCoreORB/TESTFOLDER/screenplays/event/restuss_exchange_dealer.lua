local ObjectManager = require("managers.object.object_manager")

restuss_exchange = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "restuss_exchange_task",
   states = {}, 
}

registerScreenPlay("restuss_exchange", true)

function restuss_exchange:start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
   local pMerchant = spawnMobile("rori", "restuss_exchange", 1, 5265.4, 83.7, 6100.3, 115, 0 )

end

restuss_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function restuss_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	        	 -- Get Objectnames from Each Item and check if its the choosen Item. (This is your token for the vendor)
	         	if (InvObj:getObjectName() == "mt_pie")   then
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

		-- Five Token Screen

	elseif (optionLink == "five") then
		nextConversationScreen = conversation:getScreen("five_screen")

		-- Ten Token Screen

	elseif (optionLink == "ten") then
		nextConversationScreen = conversation:getScreen("ten_screen")

		-- Fifty Token Screen

	elseif (optionLink == "fifty") then
		nextConversationScreen = conversation:getScreen("fifty_screen")

	-- 5 Token Options

		-- Geode from the wastelands of Hoth
	     elseif (optionLink == "1" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_belt_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "2" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_belt_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "3" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_bicep_l_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "4" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_bicep_l_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "5" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_bicept_r_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "6" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_bicep_r_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")




	-- 10 Token Options

		-- Tauntaun Ice Sculpture
	     elseif (optionLink == "7" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_bracer_l_schematic.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

		-- Wampa Ice Sculpture
	     elseif (optionLink == "8" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_bracer_l_schematic.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "9" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_bracer_r_schematic.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "10" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_bracer_r_schematic.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "11" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_boots_schematic.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "12" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_boots_schematic.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")



	-- 50 Token Options

		-- Tauntaun Head
	     elseif (optionLink == "13" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_gloves_schematic.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "14" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_gloves_schematic.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "15" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_leggings_schematic.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "16" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_leggings_schematic.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "17" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_chest_plate_schematic.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "18" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_chest_plate_schematic.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

	     elseif (optionLink == "19" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_helmet_schematic.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")

		-- Will of Exar Kun painting
	     elseif (optionLink == "20" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_helmet_schematic.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a segment of armor.")



          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
     	    -- Get Objectnames from Each Item and check if its the choosen Item.
		     	if (invObj:getObjectName() == "mt_pie" and DeleteItems > 0 ) then
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

function restuss_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

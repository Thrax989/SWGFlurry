local ObjectManager = require("managers.object.object_manager")

pvp_exchange= ScreenPlay:new {
   numberOfActs = 1, 
   questString = "pvp_exchange",
   states = {}, 
}

registerScreenPlay("pvp_exchange", true)

function pvp_exchange:start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
--   local pMerchant = spawnMobile("corellia", "emperors_guile", 1, -158.5, 28, -4713.3, 140, 0 )
   local pMerchant = spawnMobile("rori", "emperors_guile", 1, 5254.4, 80, 5531, 1, 0)
end

pvp_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function pvp_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	         	if (InvObj:getObjectName() == "sports_award_s01")   then
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

		-- Fifteen Token Screen

	elseif (optionLink == "fifteen") then
		nextConversationScreen = conversation:getScreen("fifteen_screen")

	-- 5 Token Options

        --1-Handed 5-Gen Saber Schematic
	     elseif (optionLink == "1" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/sword_lightsaber_one_handed_pvp_bf_gen5_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a 1-Handed 5-Gen Saber Schematic.")

         --Polearm 5-Gen Saber Schematic
	     elseif (optionLink == "2" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/sword_lightsaber_polearm_pvp_bf_gen5_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Polearm 5-Gen Saber Schematic.")

          --2-Handed 5-Gen Saber Schematic
	     elseif (optionLink == "3" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/sword_lightsaber_two_handed_pvp_bf_gen5_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a 2-Handed 5-Gen Saber Schematic.")

          --Sfor Carbine Schematic
	     elseif (optionLink == "4" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/som_carbine_republic_sfor_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Sfor Carbine Schematic.")

          --Qucktrigger Pistol Schematic
	     elseif (optionLink == "5" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/ep3_loot_quicktrigger_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Quicktrigger Pistol Schematic.")

           --Geonosian Blaster Schematic
	     elseif (optionLink == "6" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/geonosian_sonic_blaster_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Geonosian Blaster Schematic.")

            --Geonosian DXR6 Schematic
	     elseif (optionLink == "7" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/geonosian_tenloss_dxr6_schematic.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Geonosian DXR6 Schematic.")

	-- 10 Token Options

		-- Darth Plagueis' Ring
	     elseif (optionLink == "8" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/ring/darth_plagueis_ring.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Darth Plagueis' Ring.")

		-- A'Sharad Hetts Arm of Ressurection 
	     elseif (optionLink == "9" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/cyborg/arm_r_s01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received A'Sharad Hett's Arm of Ressurection")


		-- Cybernetic Torso Shield Generator
	     elseif (optionLink == "10" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/cybernetic/cybernetic_crafted_s01_torso.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Cybernetic Torso Shield Generator")


		-- Cybernetic Legs of Speed
	     elseif (optionLink == "11" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/cybernetic/cybernetic_crafted_s01_legs.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Cybernetic Legs of Speed")


	-- 15 Token Options

		-- Cloak of Hate
	     elseif (optionLink == "12" and itemCounter < 15) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 15) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/robe/robe_s32_h1.iff", -1)
	            DeleteItems = 15
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Cloak of Hate.")

		-- Shatterpoint Cloak
	     elseif (optionLink == "13" and itemCounter < 15) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 15) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/robe/robe_s33_h1.iff", -1)
	            DeleteItems = 15
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have recieved a Shatterpoint Cloak.")

		-- Sith Speeder Deed
	     elseif (optionLink == "14" and itemCounter < 15) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 15) then
	            local pItem = giveItem(pInventory, "object/tangible/deed/vehicle_deed/vehicle_deed_sith_speeder.iff", -1)
	            DeleteItems = 15
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have recieved a Sith Speeder Deed.")

		-- Future Use
--[[	     elseif (optionLink == "15" and itemCounter < 15) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 15) then
	            local pItem = giveItem(pInventory, "", -1)
	            DeleteItems = 15
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage(".") ]]--


          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
     	    -- Get Objectnames from Each Item and check if its the choosen Item.
		     	if (invObj:getObjectName() == "sports_award_s01" and DeleteItems > 0 ) then
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

function pvp_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

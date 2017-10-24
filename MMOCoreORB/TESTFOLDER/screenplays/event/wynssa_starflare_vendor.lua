local ObjectManager = require("managers.object.object_manager")

wynssa_starflare = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "wynssa_starflare",
   states = {}, 
}

registerScreenPlay("wynssa_starflare", true)

function wynssa_starflare :start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
--   local pMerchant = spawnMobile("corellia", "wynssa_starflare", 1, -159.9, 28, -4734.5, 22, 0 )
   local pMerchant = spawnMobile("corellia", "wynssa_starflare", 1, -114.8, 28.2, -4691.1, -43, 0 )
end

wynssa_starflare_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function wynssa_starflare_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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

		-- Nightsister Greusome Wrap
	     elseif (optionLink == "1" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/shirt/nightsister_shirt_s01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Nightsister Greusome Wrap.")

		-- Nightsister Battle Mantle
	     elseif (optionLink == "2" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/shirt/nightsister_shirt_s02.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Nightsister Battle Mantle.")

		-- Nightsister Havoc Habit
	     elseif (optionLink == "3" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/shirt/nightsister_shirt_s03.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Nightsister Havoc Habit.")

		-- Singing Mountain Clan Dawn Wrap s1
	     elseif (optionLink == "4" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/shirt/singing_mountain_clan_shirt_s01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Singing Mountain Clan Dawn Wrap s1.")

		-- Singing Mountain Clan Dawn Wrap s2
	     elseif (optionLink == "5" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/shirt/singing_mountain_clan_shirt_s02.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Singing Mountain Clan Dawn Wrap s2.")

               -- Singing Mountain Clan Dawn Wrap s3
	     elseif (optionLink == "6" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/shirt/singing_mountain_clan_shirt_s03.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Singing Mountain Clan Dawn Wrap s3.")

              -- Hutt Gang Vest
	     elseif (optionLink == "7" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/vest/vest_hutt_gang_s01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Hutt Gang Vest.")

		-- Hutt Gang Vest L. Shoulder
	     elseif (optionLink == "8" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/vest/vest_hutt_gang_s02.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Hutt Gang Vest L. Shoulder.")

		-- Hutt Gang Vest R. Shoulder
	     elseif (optionLink == "9" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/vest/vest_hutt_gang_s03.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Hutt Gang Vest R. Shoulder.")

	-- 30 coin Options

		-- Nightsister Pestilence Leggings
	     elseif (optionLink == "11" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/pants/nightsister_pants_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Nightsister Pestilence Leggings.")

		-- Nightsister Scourge Leggings
	     elseif (optionLink == "12" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/pants/nightsister_pants_s02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Nightsister Scourge Leggings.")

		-- Singing Mountain Clan Maidens Skirt
	     elseif (optionLink == "13" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/skirt/singing_mountain_clan_skirt_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Singing Mountain Clan Maidens Skirt.")

		-- Singing Mountain Clan Shredder Skirt
	     elseif (optionLink == "14" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/skirt/singing_mountain_clan_skirt_s02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Singing Mountain Clan Shredder Skirt.")

		-- Singing Mountain Clan Twisted Skirt
	     elseif (optionLink == "15" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/skirt/singing_mountain_clan_skirt_s03.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Singing Mountain Clan Twisted Skirt.")

                -- Nightsister Intricate Boots
	     elseif (optionLink == "16" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/boots/nightsister_boots.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Nightsister Intricate Boots.")
		
                -- Singing Mountain Clan Journey Boots
	     elseif (optionLink == "17" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/boots/singing_mountain_clan_boots.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Singing Mountain Clan Journey Boots.")
		
                -- Rebel Helmet
	     elseif (optionLink == "18" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/helmet/helmet_s06.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Rebel Helmet.")
		
                -- Zam Wesell's Belt
	     elseif (optionLink == "19" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/zam/armor_zam_wesell_belt.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Zam Wesell's Belt.")
		
                -- Zam Wesell's Boots
	     elseif (optionLink == "20" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/zam/armor_zam_wesell_boots.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Zam Wesell's Boots.")
		
                -- Zam Wesell's Gloves
	     elseif (optionLink == "21" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "21" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/zam/armor_zam_wesell_gloves.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Zam Wesell's Gloves.")
		
	-- 50 coin Options

                -- Nightsister Vibrant Dread Shroud
	     elseif (optionLink == "22" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "22" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/dress/nightsister_dress.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Nightsister Vibrant Dread Shroud.")
		
                -- Nightsister Aerie Stalker Hood
	     elseif (optionLink == "23" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "23" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/hat/nightsister_hat_s01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Nightsister Aerie Stalker Hood.")
		
                -- Nightsister Carnage Beret
	     elseif (optionLink == "24" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "24" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/hat/nightsister_hat_s02.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Nightsister Carnage Beret.")
		
                -- Nightsister Tarnished Shroud
	     elseif (optionLink == "25" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "25" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/hat/nightsister_hat_s03.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Nightsister Tarnished Shroud.")
		
                -- Singing Mountain Clan Soul Guard
	     elseif (optionLink == "26" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "26" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/hat/singing_mountain_clan_hat_s01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Singing Mountain Clan Soul Guard.")
		
                -- Singing Mountain Clan Frenzy Headcover
	     elseif (optionLink == "27" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "27" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/hat/singing_mountain_clan_hat_s02.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Singing Mountain Clan Frenzy Headcover.")
		
                -- Singing Mountain Clan Mask
	     elseif (optionLink == "28" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "28" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/hat/singing_mountain_clan_mask_s01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Singing Mountain Clan Mask.")
		
                -- Singing Mountain Clan L. Bicep
	     elseif (optionLink == "29" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "29" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/singing_mountain_clan/armor_smc_s01_bicep_l.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Singing Mountain Clan L. Bicep.")

		-- Singing Mountain Clan R. Bicep
	     elseif (optionLink == "30" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "30" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/singing_mountain_clan/armor_smc_s01_bicep_r.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Singing Mountain Clan R. Bicep.")

		-- Singing Mountain Clan L. Bracer
	     elseif (optionLink == "31" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "31" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/singing_mountain_clan/armor_smc_s01_bracer_l.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Singing Mountain Clan L. Bracer.")

		-- Singing Mountain Clan R. Bracer
	     elseif (optionLink == "32" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "32" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/armor/singing_mountain_clan/armor_smc_s01_bracer_r.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Singing Mountain Clan R. Bracer.")

		-- Prefect Talmont's Robe
	     elseif (optionLink == "33" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "33" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/robe/robe_prefect_talmont.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Prefect Talmont's Robe.")

		-- Rebel Shirt
	     elseif (optionLink == "34" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "34" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/shirt/shirt_s03_rebel.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rebel Shirt.")

               -- Dera's Rebel Shirt
	     elseif (optionLink == "35" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "35" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/shirt/shirt_dera.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Dera's Rebel Shirt.")

               -- Singing Mountain Clan Backpack
	     elseif (optionLink == "36" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "36" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/backpack/singing_mountain_clan_backpack.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Singing Mountain Clan Backpack.")

		-- Multipocket Bandolier
	     elseif (optionLink == "37" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "37" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/bandolier/multipocket_bandolier.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Multipocket Bandolier.")

		-- AT-AT Bodysuit
	     elseif (optionLink == "38" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "38" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/bodysuit/bodysuit_atat.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an AT-AT Bodysuit.")

		-- AT-AT Helmet
	     elseif (optionLink == "39" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "39" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/helmet/helmet_atat.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an AT-AT Helmet.")

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


function wynssa_starflare_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

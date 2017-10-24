local ObjectManager = require("managers.object.object_manager")

papa_leone = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "papa_leone",
   states = {}, 
}

registerScreenPlay("papa_leone", true)

function papa_leone :start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
--   local pMerchant = spawnMobile("corellia", "papa_leone", 1, -159.9, 28, -4734.5, 22, 0 )
   local pMerchant = spawnMobile("corellia", "papa_leone", 1, -117.9, 28.2, -4693.2, -43, 0 )
end

papa_leone_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function papa_leone_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
		-- Five coin Screen

	elseif (optionLink == "five") then
		nextConversationScreen = conversation:getScreen("five_screen")

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

         -- 5 Coin Options

		-- Fat Bottle
	     elseif (optionLink == "1" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/bottle_fat.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Fat Bottle.")

		-- Pear Bottle
	     elseif (optionLink == "2" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/bottle_pear.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Pear Bottle.")

		-- Tall Bottle
	     elseif (optionLink == "3" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/bottle_tall.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Tall Bottle.")

		-- Assorted Fruit
	     elseif (optionLink == "4" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/fruit_assorted.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Assorted Fruit.")

		-- Kitchen Utensils
	     elseif (optionLink == "5" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/kitchen_utensils.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Kitchen Utensils.")

               -- Pitcher
	     elseif (optionLink == "6" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/pitcher_full.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Pitcher.")

              -- Carved Bowl
	     elseif (optionLink == "7" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/carved_bowl.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Carved Bowl.")

		-- Plain Bowl
	     elseif (optionLink == "8" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/plain_bowl.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Plain Bowl.")

		-- Stuffed Fish
	     elseif (optionLink == "9" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/stuffed_fish.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Stuffed Fish.")

	-- 10 coin Options

		-- Victory Painting
	     elseif (optionLink == "10" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_vader_victory.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Victory Painting.")

		-- wanted trando
	     elseif (optionLink == "11" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_trandoshan_wanted.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Wanted Painting.")

		-- Smoking Ad
	     elseif (optionLink == "12" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_smoking_ad.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Smoking Ad.")

		-- Palowick Ad
	     elseif (optionLink == "13" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_palowick_ad_s01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Palowick Ad.")

		-- Rodian Ad
	     elseif (optionLink == "14" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_rodian_f_ad_01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rodian Ad.")

               -- Baking Food S1 Painting
	     elseif (optionLink == "15" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_food_baking_s01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Baking Food S1 Painting.")

              -- Baking Food S2 Painting
	     elseif (optionLink == "16" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_food_baking_s02.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Baking Food S2 Painting.")

		-- Twi'lek Male Portrait
	     elseif (optionLink == "17" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_twilek_m.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Twi'lek Male Portrait.")

		-- Waterfall Painting
	     elseif (optionLink == "18" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_waterfall.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Waterfall Painting.")

		-- Potted Tree S2
	     elseif (optionLink == "19" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_tree_potted_s2.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Potted Tree S2.")

	-- 30 coin Options

		-- Diner Bar
	     elseif (optionLink == "20" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_diner_bar.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Diner Bar.")

		-- Diner Booth
	     elseif (optionLink == "21" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "21" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_diner_booth.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Diner Booth.")

		-- Diner Center Counter
	     elseif (optionLink == "22" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "22" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_diner_counter_center.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Diner Center Counter.")

		-- Diner Corner Counter
	     elseif (optionLink == "23" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "23" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_diner_counter_corner.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Diner Corner Counter.")

		-- Diner Corner Counter S2
	     elseif (optionLink == "24" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "24" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_diner_counter_corner_s02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Diner Corner Counter S2.")

                -- Diner Table
	     elseif (optionLink == "25" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "25" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_diner_table.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Diner Table.")
		
                -- Cantina Table S1
	     elseif (optionLink == "26" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "26" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/tatooine/frn_tatt_table_cantina_table_1.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Cantina Table S1.")
		
                -- Cantina Table S2
	     elseif (optionLink == "27" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "27" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/tatooine/frn_tatt_table_cantina_table_2.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Cantina Table S2.")
		
                -- Cantina Table S3
	     elseif (optionLink == "28" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "28" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/tatooine/frn_tatt_table_cantina_table_3.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Cantina Table S3.")
		
                -- Bar Counter
	     elseif (optionLink == "29" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "29" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/modern/bar_counter_s1.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Bar Counter.")
		
	-- 50 coin Options

                -- Jubilee Wheel
	     elseif (optionLink == "30" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "30" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/gambling/wheel/roulette.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Jubilee Wheel.")
		
                -- Lugjack Machine
	     elseif (optionLink == "31" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "31" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/gambling/slot/standard.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lugjack Machine.")
		
                -- Glass Pane S1
	     elseif (optionLink == "32" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "32" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/saga_system/rewards/pgc_glass_pane_01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Glass Pane S1.")
		
                -- Glass Pane S2
	     elseif (optionLink == "33" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "33" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/saga_system/rewards/pgc_glass_pane_02.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Glass Pane S2.")
		
                -- Giant Table
	     elseif (optionLink == "34" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "34" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/imperial/bunker_table_giant_style_01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Giant Table.")
		
                -- Burning Temple
	     elseif (optionLink == "35" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "35" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/veteran_reward/frn_vet_jedi_temple_burning.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Burning Temple.")
		
                -- Rebel Painting
	     elseif (optionLink == "36" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "36" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/vet_reward_rebel_painting.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Rebel Painting.")
		
                -- Camp Stove S1
	     elseif (optionLink == "37" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "37" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/camp/camp_spit_s2.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Camp Stove S1.")

		-- Camp Stove S2
	     elseif (optionLink == "38" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "38" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/camp/camp_spit_s3.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Camp Stove S2.")

		-- Portable Stove
	     elseif (optionLink == "39" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "39" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/portable_stove.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Portable Stove.")

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


function papa_leone_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

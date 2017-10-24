local ObjectManager = require("managers.object.object_manager")

efol_token_exchange = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "efol_token_exchange_task",
   states = {}, 
}

registerScreenPlay("efol_token_exchange", true)

function efol_token_exchange:start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
--   local pMerchant = spawnMobile("corellia", "loveday_ewok", 1, -158.5, 28, -4719.3, 140, 0 )
   local pMerchant = spawnMobile("corellia", "loveday_ewok", 1, -108.7, 28.2, -4687.0, -43, 0 )
end

efol_token_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function efol_token_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	        	 -- Get Objectnames from Each Item and check if its the choosen Item. (This is your token for the vendor)
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

		-- Five Token Screen

	elseif (optionLink == "five") then
		nextConversationScreen = conversation:getScreen("five_screen")

		-- Twenty Token Screen

	elseif (optionLink == "ten") then
		nextConversationScreen = conversation:getScreen("ten_screen")

               -- Thirty Token Screen

	elseif (optionLink == "thirty") then
		nextConversationScreen = conversation:getScreen("thirty_screen")

-- OptionLink == "ID" <-- Set on previous lua
-- ItemCounter < number of tokens that item costs (Function: See's if player has less than number of tokens and if they do it sends system message "You have insufficient items")
-- ItemCounter >= number of tokens that item costs (Function: Gets player's inventory and if they have greater than or equal to number of tokens, the purchase goes through)
-- DeleteItems = number of tokens that item costs (Function: deletes the tokens from players inventory)

	-- 5 Token Options

		-- A small Decorative Bed
	     elseif (optionLink == "1" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series4/decorative_child_bed_01.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Youngling Bed.")

		-- A Loveday Bed
	     elseif (optionLink == "2" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_bed_efol.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Ewok Loveday Bed.")

		-- Loveday Bouquet
	     elseif (optionLink == "3" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_loveday_bouquet.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Loveday Bouquet.")

	-- 10 Token Options

		-- Loveday Sign Hanging
	     elseif (optionLink == "4" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/sign/player/efol_hanging_sign_01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Hanging Loveday Sign.")

		-- Loveday Sign Standing
	     elseif (optionLink == "5" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/sign/player/efol_standing_sign_01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Loveday Standing Sign.")

		-- Loveday Fountain with Flowers
	     elseif (optionLink == "6" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/holiday/love_day/love_day_fountain_with_flowers_reward.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Fountain with Flowers.")

		-- Loveday Fountain Normal
	     elseif (optionLink == "7" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/holiday/love_day/love_day_fountain_reward.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Loveday Fountain Normal.")

	-- 30 Token Options

		-- Loveday Wings
	     elseif (optionLink == "8" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/backpack/back_love_day_11_hue_wings.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Loveday Wings.")

                -- A Loveday Halo Style 1
	     elseif (optionLink == "9" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/hat/hat_loveday_halo_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Loveday Halo Style 1.")
		
                -- A Loveday Halo Style 2
	     elseif (optionLink == "10" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/hat/hat_loveday_halo_02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Loveday Halo Style 2.")
		
                -- Loveday Painting (1)
	     elseif (optionLink == "11" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/misc/frn_all_painting_efol_11_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Loveday Painting (1).")
		
                -- Loveday Painting (2)
	     elseif (optionLink == "12" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/misc/frn_all_painting_efol_11_s02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Loveday Painting (2).")
		
                -- Loveday Painting (3)
	     elseif (optionLink == "13" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/misc/frn_all_painting_efol_11_s03.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Loveday Painting (3).")
		
                -- Loveday Painting (4)
	     elseif (optionLink == "14" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/misc/frn_all_painting_efol_11_s04.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Loveday Painting (4).")
		
                -- Loveday Painting (5)
	     elseif (optionLink == "15" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/misc/frn_all_painting_efol_11_s05.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Loveday Painting (5).")
		
                -- Bantha Skin Rug
	     elseif (optionLink == "16" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_rug_bantha_skin.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Bantha Skin Rug.")

                -- Decorative Rug
	     elseif (optionLink == "17" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series4/decorative_tcg_rug_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Decorative Rug.")

                -- City Statue (Rebel)
	     elseif (optionLink == "18" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/city/statue_city_rebel_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a City Statue (Rebel).")

                -- City Statue (Imperial)
	     elseif (optionLink == "19" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/city/statue_city_imperial_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a City Statue (Imperial).")

                -- City Fountain
	     elseif (optionLink == "20" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/city/fountain_city_style_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Memorial Wishing Pool")

               -- Card stack
	     elseif (optionLink == "21" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "21" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/holiday/love_day/love_day_card_stack.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Love Day Card Stack.")

               -- Tauntaun Ride
	     elseif (optionLink == "22" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "22" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series4/decorative_tauntaun_ride.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a magical Tauntaun Ride!!!")	

               -- PGC Screen
	     elseif (optionLink == "23" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "23" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/saga_system/rewards/pgc_monitorscreen.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Large Monitor Screen.")		    
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


function efol_token_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end


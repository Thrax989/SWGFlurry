local ObjectManager = require("managers.object.object_manager")

xmas_token_exchange = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "xmas_token_exchange_task",
   states = {}, 
}

registerScreenPlay("xmas_token_exchange", true)

function xmas_token_exchange:start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
--   local pMerchant = spawnMobile("corellia", "xmas_token_exchange", 1, -158.5, 28, -4710.3, 140, 0 )
   local pMerchant = spawnMobile("corellia", "xmas_token_exchange", 1, -101.2, 28.2, -4682.1, -43, 0 )
end

xmas_token_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function xmas_token_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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

		-- Ten Token Screen

	elseif (optionLink == "ten") then
		nextConversationScreen = conversation:getScreen("ten_screen")

               -- Thirty Token Screen

	elseif (optionLink == "thirty") then
		nextConversationScreen = conversation:getScreen("thirty_screen")

		-- Fifty Token Screen

	elseif (optionLink == "fifty") then
		nextConversationScreen = conversation:getScreen("fifty_screen")

-- OptionLink == "ID" <-- Set on previous lua
-- ItemCounter < number of tokens that item costs (Function: See's if player has less than number of tokens and if they do it sends system message "You have insufficient items")
-- ItemCounter >= number of tokens that item costs (Function: Gets player's inventory and if they have greater than or equal to number of tokens, the purchase goes through)
-- DeleteItems = number of tokens that item costs (Function: deletes the tokens from players inventory)

	-- 5 Token Options

		-- Lifeday Necklace
	     elseif (optionLink == "1" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/necklace/necklace_lifeday.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lifeday Necklace.")

		-- Lifeday Cookie
	     elseif (optionLink == "2" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/holiday/life_day/rewards_09/lifeday_decor_cookie.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Cookie.")

		-- Lifeday Fruitcake
	     elseif (optionLink == "3" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/holiday/life_day/rewards_09/lifeday_decor_fruitcake.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Fruitcake. ")

		-- Lifeday Varactyl Nog
	     elseif (optionLink == "4" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/holiday/life_day/rewards_09/lifeday_decor_varactyl_nog.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Varactyl Nog.")

		-- Pocket Aquarium
	     elseif (optionLink == "5" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/lifeday_pocket_aquarium.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Pocket Aquarium. ")

               -- A Lifeday Ornament
	     elseif (optionLink == "6" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/holiday/life_day/rewards_09/lifeday_ornament.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lifeday Ornament. ")


	-- 10 Token Options

		-- A Female Lifeday Jacket style 01
	     elseif (optionLink == "7" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/jacket/jacket_lifeday_09_01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lifeday Jacket Style 1 Female.")

		-- A Female Lifeday Jacket Style 02
	     elseif (optionLink == "8" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/jacket/jacket_lifeday_09_02.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lifeday Jacket Style 2 Female.")

		-- Lifeday Jacket Worn by Figrin Dan
	     elseif (optionLink == "9" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/jacket/jacket_lifeday_figrin_dan.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Figrin Dan Lifeday Jacket.")

		-- Wroshyr Tree
	     elseif (optionLink == "10" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_lifeday_wroshyr_tree.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Wroshyr Tree.")

		-- Mini Wroshyr Tree
	     elseif (optionLink == "11" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_lifeday_mini_tree.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Mini Worshyr Tree.")

		-- Lifeday Lamp Style 1
	     elseif (optionLink == "12" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/holiday/life_day/rewards_09/lifeday_lamp_01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lifeday Lamp Style 1.")

		-- Lifeday Lamp Style 2
	     elseif (optionLink == "13" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/holiday/life_day/rewards_09/lifeday_lamp_02.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lifeday Lamp Style 2.")

		-- Glowing Lifeday Lamp
	     elseif (optionLink == "14" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/event_lifeday07_lamp.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Glowing Lifeday Lamp.")

		-- A Lifeday Plant
	     elseif (optionLink == "15" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/event_lifeday07_plant.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Plant.")

	-- 30 Token Options

                -- A Proton Chair
	     elseif (optionLink == "16" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/lifeday/lifeday_proton_chair.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Proton Chair.")
		
                -- Lifeday Painting (Vader)
	     elseif (optionLink == "17" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/holiday/life_day/rewards_09/lifeday_painting.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Painting (Vader).")
		
                -- Lifeday Painting wookiee Gathering
	     elseif (optionLink == "18" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/lifeday_painting.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Painting (wookiee Gathering).")
		
                -- Lifeday Painting of Courage
	     elseif (optionLink == "19" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/lifeday/lifeday_painting_2010_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Painting of Courage.")
		
                -- Lifeday Painting of Morality
	     elseif (optionLink == "20" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/lifeday/lifeday_painting_2010_s02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Painting of Morality.")
		
                -- Lifeday Painting of Loyalty
	     elseif (optionLink == "21" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "21" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/lifeday/lifeday_painting_2010_s03.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Painting of Loyalty.")
		
                -- Lifeday Painting of Compassion
	     elseif (optionLink == "22" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "22" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/lifeday/lifeday_painting_2010_s04.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Painting of Compassion.")
		
                -- Lifeday Painting of Red Robed wookiee
	     elseif (optionLink == "23" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "23" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/lifeday/lifeday_painting_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Painting of Red Robed wookiee.")
		
                -- Lifeday Painting of a wookiee with pups
	     elseif (optionLink == "24" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "24" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/lifeday/lifeday_painting_s02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Painting of a wookiee with pups.")
		
                -- Lifeday Painting of a Proud wookiee
	     elseif (optionLink == "25" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "25" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/lifeday/lifeday_painting_s03.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Painting of a Proud wookiee.")
		
                -- Lifeday Painting of Gift giving Wookiee's
	     elseif (optionLink == "26" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "26" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/lifeday/lifeday_painting_s04.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Painting of Gift giving Wookiee's.")
		
                -- Lifeday Painting of Kashyyyk at night
	     elseif (optionLink == "27" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "27" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/lifeday/lifeday_painting_s05.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Painting of Kashyyyk at night.")
		
                -- Lifeday Painting of Ancient Lifeday
	     elseif (optionLink == "28" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "28" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/event_lifeday07_painting_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Painting of Ancient Lifeday.")
		
                -- Lifeday Holo Table
	     elseif (optionLink == "29" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "29" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/lifeday_holo_table.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Lifeday Holo Table.")

	-- 50 Token Options

		-- A Lifeday Bandolier 50 slots
	     elseif (optionLink == "30" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "30" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/bandolier/lifeday_08_bandolier.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Bandolier 50 slots.")

		-- A Lifeday Banner Style 1
	     elseif (optionLink == "31" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "31" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_lifeday_banner_01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lifeday Banner Style 1.")

		-- A Lifeday Banner Style 2
	     elseif (optionLink == "32" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "32" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_lifeday_banner_02.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lifeday Banner Style 2.")

		-- A Lifeday Banner Style 3
	     elseif (optionLink == "33" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "33" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_lifeday_banner_03.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lifeday Banner Style 3.")

               -- Lifeday Bunting
	     elseif (optionLink == "34" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "34" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_lifeday_bunting.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lifeday Bunting.")

               -- A Decorated Tree
	     elseif (optionLink == "35" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "35" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_lifeday_decorated_tree.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Decorated Tree.")

		-- A Rustic Fireplace
	     elseif (optionLink == "36" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "36" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_lifeday_fireplace_01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rustic Fireplace.")

		-- A Kashyyykan Fireplace
	     elseif (optionLink == "37" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "37" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_lifeday_fireplace_02.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Kashyyykan Fireplace.")

		-- Incense Burner
	     elseif (optionLink == "38" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "38" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_lifeday_incense_burner.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Incense Burner.")

		-- Lifeday Robe
	     elseif (optionLink == "39" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "39" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/wookiee/wke_lifeday_robe.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lifeday Robe.")

		-- Stap Speeder
	     elseif (optionLink == "40" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "40" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/deed/vehicle_deed/speeder_stap_deed.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Stap Speeder.")
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


function xmas_token_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end


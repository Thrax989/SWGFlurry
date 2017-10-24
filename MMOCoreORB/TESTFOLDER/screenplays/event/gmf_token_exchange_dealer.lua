local ObjectManager = require("managers.object.object_manager")

gmf_token_exchange = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "gmf_token_exchange_task",
   states = {}, 
}

registerScreenPlay("gmf_token_exchange", true)

function gmf_token_exchange:start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
--   local pMerchant = spawnMobile("corellia", "gmf_token_exchange", 1, -158.5, 28, -4716.3, 140, 0 )
   local pMerchant = spawnMobile("corellia", "gmf_token_exchange", 1, -104.3, 28.2, -4684.1, -43, 0 )
end

gmf_token_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function gmf_token_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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

		-- Fifty Token Screen

	elseif (optionLink == "fifty") then
		nextConversationScreen = conversation:getScreen("fifty_screen")

	-- 5 Token Options

		-- Spider Web Style 1
	     elseif (optionLink == "13" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_spider_web_01.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Halloween Spider Web Style 1.")

		-- Spider Web Style 2
	     elseif (optionLink == "14" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_spider_web_02.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Halloween Spider Web Style 2.")

		-- Spider Web Style 3
	     elseif (optionLink == "15" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_spider_web_03.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Halloween Spider Web Style 3. ")

		-- Bats in Jelly
	     elseif (optionLink == "16" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_bat_pheromone.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Bats in Jelly.")

		-- Spiders in Jelly
	     elseif (optionLink == "17" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_spider_pheromone.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Spiders in Jelly. ")

	-- 10 Token Options

		-- A Krayt Skeleton Decoration
	     elseif (optionLink == "7" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_krayt_dragon_skeleton.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Krayt Skeleton Decoration.")

		-- Sith o' Lantern Style 1
	     elseif (optionLink == "8" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_sith_o_lantern_01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Sith o' Lantern Style 1.")

		-- Sith o' Lantern Style 2
	     elseif (optionLink == "9" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_sith_o_lantern_02.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Sith o' Lantern Style 2.")

		-- Sith o' Lantern Style 3
	     elseif (optionLink == "10" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_sith_o_lantern_03.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Sith o' Lantern Style 3.")

		-- Sith o' Lantern Style 4
	     elseif (optionLink == "11" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_sith_o_lantern_04.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Sith o' Lantern Style 4.")

		-- Sith o' Lantern Style 5
	     elseif (optionLink == "12" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_sith_o_lantern_05.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Sith o' Lantern Style 5.")

		-- Skull Candle Style 1
	     elseif (optionLink == "18" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_skull_candle_01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Skull Candle Style 1.")

		-- Skull Candle Style 2
	     elseif (optionLink == "19" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_skull_candle_02.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Skull Candle Style 2.")

	-- 10 Token Options Page 2

		-- Kash Dead Forest Scarecrow S01
	     elseif (optionLink == "20" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/building/kashyyyk/poi_kash_dead_forest_scarecrow_s01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")

		-- Kash Dead Forest Scarecrow S02
	     elseif (optionLink == "21" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "21" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/building/kashyyyk/poi_kash_dead_forest_scarecrow_s02.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")

		-- Kash Dead Forest Scarecrow S03
	     elseif (optionLink == "22" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "22" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/building/kashyyyk/poi_kash_dead_forest_scarecrow_s03.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")

		-- Burning Man Prop (small)
	     elseif (optionLink == "23" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "23" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_item_burning_man.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Burning Man Prop (small).")

		-- Scarecrow Prop Style 1
	     elseif (optionLink == "24" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "24" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_scarecrow_01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Scarecrow Prop Style 1.")

		-- Scarecrow Prop Style 2
	     elseif (optionLink == "25" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "25" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/storyteller/prop/pr_scarecrow_02.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Scarecrow Prop Style 2.")

	-- 50 Token Options

		-- Portrait of z'ozpheratu
	     elseif (optionLink == "1" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/event_perk/halloween_painting.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Portrait of Z'ozpheratu.")

		-- Decorative House Sign Style 1
	     elseif (optionLink == "2" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/sign/player/house_address_halloween_sign.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Decorative House Sign Style 1.")

		-- Decorative Shop Sign Style 1
	     elseif (optionLink == "3" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/sign/player/shop_sign_halloween_sign.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")

		-- Huttlet Backpack
	     elseif (optionLink == "4" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/backpack/backpack_gmf_01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Huttlet Backpack.")

		-- Bat Wings Costume
	     elseif (optionLink == "5" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/backpack/back_gmf_wings.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Bat Wing Costume.")

		-- Z'ozpheratu's Jacket
	     elseif (optionLink == "6" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/jacket/jacket_gmf_01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Z'ozpheratu's Jacket.")

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


function gmf_token_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

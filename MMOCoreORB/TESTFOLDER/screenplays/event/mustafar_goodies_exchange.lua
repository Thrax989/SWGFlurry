local ObjectManager = require("managers.object.object_manager")

mustafar_goodies_exchange = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "mustafar_goodies_exchange",
   states = {}, 
}

registerScreenPlay("mustafar_goodies_exchange", true)

function mustafar_goodies_exchange:start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
   local pMerchant = spawnMobile("mustafar", "mustafar_goodies_exchange", 1, 381.2, 225.0, -1355.5, -96, 0 )
end

mustafar_goodies_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function mustafar_goodies_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	         	if (InvObj:getObjectName() == "story_token")   then
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

		-- Ten Token Screen

	elseif (optionLink == "ten") then
		nextConversationScreen = conversation:getScreen("ten_screen")

		-- Thirty Token Screen

	elseif (optionLink == "thirty") then
		nextConversationScreen = conversation:getScreen("thirty_screen")


		-- Fifty Token Screen

	elseif (optionLink == "fifty") then
		nextConversationScreen = conversation:getScreen("fifty_screen")

		-- Seventy Token Screen

	elseif (optionLink == "seventy") then
		nextConversationScreen = conversation:getScreen("seventy_screen")


	-- 10 Token Options

		-- Lava Geode
	     elseif (optionLink == "1" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/lava_geode.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Mustafar Lava Geode.")

		-- Emperor Lamp
	     elseif (optionLink == "2" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/emperor_lamp.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Emperor's Lamp.")

		-- Sarlaac Base style 1
	     elseif (optionLink == "3" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/sarlacc_base_s01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Sarlaac Base Style 1.")

		-- Sarlaac Base Style 2
	     elseif (optionLink == "4" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/sarlacc_base_s02.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Sarlaac Base Style 2.")

		-- Xeno Desk Lamp
	     elseif (optionLink == "5" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/xeno_desk_lamp.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Xeno's Desk Lamp.")

		-- Generic Eye of Mesra
	     elseif (optionLink == "6" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/generic_eye_of_mesra.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Generic Eye of Mesra.")



	-- 30 Token Screen

		-- Emperor Chair
	     elseif (optionLink == "7" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/emperor_chair.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Emperor's Chair.")

		-- Emperor Desk
	     elseif (optionLink == "8" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/emperor_desk.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Emperor's Desk.")

		-- Sarlaac Mini style 1
	     elseif (optionLink == "9" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/sarlacc_mini_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have recieved a Sarlaac Mini Style 1.")
		-- Sarlaac Mini Style 2
	     elseif (optionLink == "10" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/sarlacc_mini_s02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have recieved a Sarlaac Mini Style 2.")

		-- Xeno Desk
	     elseif (optionLink == "11" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/xeno_desk.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Xeno's Desk.")

		-- Rustic Armoire
	     elseif (optionLink == "12" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/rustic/armoire_rustic_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rustic Armoire.")

		-- Rustic Bookcase
	     elseif (optionLink == "13" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/rustic/bookcase_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rustic Bookcase.")

		-- Rustic Cabinet
	     elseif (optionLink == "14" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/rustic/cabinet_rustic_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rustic Cabinet.")

		-- Rustic Chair
	     elseif (optionLink == "15" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/rustic/chair_rustic_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rustic Chair.")

		-- Rustic Chest
	     elseif (optionLink == "16" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/rustic/chest_rustic_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rustic Chest.")

		-- Rustic Coffee Table
	     elseif (optionLink == "17" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/rustic/coffee_table_rustic_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rustic Coffee Table.")

		-- Rustic End Table
	     elseif (optionLink == "18" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/rustic/end_table_rustic_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rustic End Table.")

		-- Small Monster Bones
	     elseif (optionLink == "19" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/bones_must_monster_jaw_small.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Small Monster Jaw Bones.")

		-- Jedi Relic Style 1
	     elseif (optionLink == "20" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/jedi_relic_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Jedi Relic Style 1.")

		-- Jedi Relic Style 2
	     elseif (optionLink == "21" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "21" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/jedi_relic_02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Jedi Relic Style 2.")

		-- Jedi Relic Style 3
	     elseif (optionLink == "22" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "22" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/jedi_relic_03.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Jedi Relic Style 3.")

		-- Mustafar Chair
	     elseif (optionLink == "23" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "23" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/must_chair_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Mustafar Chair.")

		-- Mustafar Painting Style 1
	     elseif (optionLink == "24" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "24" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/must_painting_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Mustafar Painting Style 1.")

		-- Mustafar Painting Style 2
	     elseif (optionLink == "25" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "25" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/must_painting_02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Mustafar Painting Style 2.")

		-- Mustafar Painting Style 3
	     elseif (optionLink == "26" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "26" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/must_painting_03.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Mustafar Painting Style 3.")

		-- Mustafar Painting Style 4
	     elseif (optionLink == "27" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "27" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/must_painting_04.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Mustafar Painting Style 4.")

		-- Sith Relic 
	     elseif (optionLink == "28" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "28" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/sith_relic_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Sith Relic.")

		-- Display Case
	     elseif (optionLink == "29" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "29" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/must_display_case.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Display Case.")

		-- Jedi Statue
	     elseif (optionLink == "30" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "30" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/jedi_statue.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Jedi Relic Style 1.")

		-- Mustafar Table Small
	     elseif (optionLink == "31" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "31" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/must_table_small_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Small Mustafar Table.")

		-- Lizard Heart
	     elseif (optionLink == "32" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "32" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/trophey_lava_lizard_heart.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lava Lizard Heart Trophy.")

		-- 50 Token Screen

		-- Xeno Couch
	     elseif (optionLink == "33" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "33" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/xeno_couch.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Xeno Couch.")

		-- Xeno Rug
	     elseif (optionLink == "34" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "34" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/xeno_rug.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Xeno Rug.")

		-- Xeno Table
	     elseif (optionLink == "35" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "35" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/xeno_table.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Xeno Table.")

		-- Xeno Throne
	     elseif (optionLink == "36" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "36" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/xeno_throne.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Xeno Throne.")

		-- Rustic Couch
	     elseif (optionLink == "37" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "37" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/rustic/couch_rustic_s01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rustic Couch.")

		-- Rustic Love Seat
	     elseif (optionLink == "38" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "38" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/rustic/love_seat_rustic_s01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rustic Love Seat.")

		-- Large Monster Jaw Bones
	     elseif (optionLink == "39" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "39" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/bones_must_monster_jaw_large.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Large Monster Jaw Bones.")

		-- Tulrus Spine
	     elseif (optionLink == "40" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "40" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/trophey_tulrus_spine.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Tulrus Spine Trophy.")

		-- Blistmok Skin 
	     elseif (optionLink == "41" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "41" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/trophey_blistmok_skin.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Blistmok Skin Trophy.")

		-- Mustafar Map
	     elseif (optionLink == "42" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "42" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/mustafar_map.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Mustafar Map.")

		-- Mustafar Table Large
	     elseif (optionLink == "43" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "43" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/must_table_large_01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Mustafar Table Large.")

		-- Lava Beetle Trophy
	     elseif (optionLink == "44" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "44" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/trophey_lava_beetle.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lava Beetle Trophy.")

		-- Lava Flea Trophy
	     elseif (optionLink == "45" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "45" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/trophey_lava_flea.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lava Flea Trophy.")

		-- Xandank Trophy
	     elseif (optionLink == "46" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "46" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/trophey_xandank.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Xandank Trophy.")

		-- 70 Token Screen
		-- Lava Skiff
	     elseif (optionLink == "47" and itemCounter < 70) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "47" and itemCounter >= 70) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/lavaskiff_loot_schematic.iff", -1)
	            DeleteItems = 70
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lava Skiff Deed.")





          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
     	    -- Get Objectnames from Each Item and check if its the choosen Item.
		     	if (invObj:getObjectName() == "story_token" and DeleteItems > 0 ) then
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

function mustafar_goodies_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

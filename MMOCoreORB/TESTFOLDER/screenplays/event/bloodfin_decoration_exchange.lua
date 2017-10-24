local ObjectManager = require("managers.object.object_manager")

bloodfin_decoration_exchange = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "bloodfin_decoration_exchange",
   states = {}, 
}

registerScreenPlay("bloodfin_decoration_exchange", true)

function bloodfin_decoration_exchange :start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
--   local pMerchant = spawnMobile("corellia", "bloodfin_decoration_exchange", 1, -158.5, 28, -4735.3, 33, 0 )
   local pMerchant = spawnMobile("corellia", "bloodfin_decoration_exchange", 1, -107.1, 28.2, -4686.0, -43, 0 )
end

bloodfin_decoration_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function bloodfin_decoration_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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

		-- Zabark Male 
	     elseif (optionLink == "1" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_zabrak_m.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Zabark Male Painting.")

		-- Zabrak Female
	     elseif (optionLink == "2" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_zabrak_f.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Zabarak Female Painting.")

		-- Tera Kasi 2
	     elseif (optionLink == "3" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_teras_kasi_2.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Tera Kasi 2 Painting. ")

		-- Tera Kasi
	     elseif (optionLink == "4" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_teras_kasi.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Tera Kasi Painting.")

		-- Victorious Reign
	     elseif (optionLink == "5" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_victorious_reign.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Victorious Reign Painting. ")

               -- Rodian Male
	     elseif (optionLink == "6" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_rodian_m.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rodian Male Painting. ")

              -- Rodian Female
	     elseif (optionLink == "7" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_rodian_f.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rodian Female Painting.")

		-- Planet
	     elseif (optionLink == "8" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_planet_s01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Planet Painting.")

		-- Endor
	     elseif (optionLink == "9" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_endor_style_01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Endor Painting.")

		-- Nebula Flower
	     elseif (optionLink == "10" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_nebula_flower.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Nebula Flower Painting.")

	-- 30 coin Options

		-- Rectangle Rug 5
	     elseif (optionLink == "11" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_rug_rectangle_large_style_05.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rectangle Rug Style 5.")

		-- Rectangle Rug 3
	     elseif (optionLink == "12" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_rug_rectangle_large_style_03.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rectangle Rug Style 3")

		-- Oval Rug style 2
	     elseif (optionLink == "13" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/modern/rug_oval_m_s02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Oval Rug style 2.")

		-- Rectangle Rug style 2
	     elseif (optionLink == "14" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/modern/rug_rect_lg_s02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Display Rectangle Rug style 2.")

		-- Hanging Planter
	     elseif (optionLink == "15" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/hanging_planter.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Hanging Planter.")

                -- Small Potted Plant 2
	     elseif (optionLink == "16" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_potted_plants_sml_s02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Small Potted Plant 2.")
		
                -- Small Potted Plant 3
	     elseif (optionLink == "17" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_potted_plants_sml_s03.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Small Potted Plant 3.")
		
                -- Small Potted Plant 4
	     elseif (optionLink == "18" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_potted_plants_sml_s04.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Small Potted Plant 4.")
		
                -- Large Potted Plant 2
	     elseif (optionLink == "19" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_plant_potted_lg_s2.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Large Potted Plant 2.")
		
                -- Large Potted Plant 3
	     elseif (optionLink == "20" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_plant_potted_lg_s3.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Large Potted Plant 3.")
		
                -- Falcon Seat s1
	     elseif (optionLink == "21" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "21" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/space/frn_chair_falcon_passenger_s01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Falcon Seat s1.")
		
                -- Falcon Seat s2
	     elseif (optionLink == "42" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "42" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/space/frn_chair_falcon_passenger_s02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Falcon Seat s2.")

               -- Tat Small Table s2
	     elseif (optionLink == "45" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "45" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/tatooine/frn_tato_table_small_style_02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Tat Small Table s2.")

               -- Tat Small Table s3
	     elseif (optionLink == "46" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "46" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/tatooine/frn_tato_table_small_style_03.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Tat Small Table s3.")

		 -- Tat Cafe Chair s2
	     elseif (optionLink == "47" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "47" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Tat Cafe Chair s2.")

		 -- Tat Cantina Seat s1
	     elseif (optionLink == "48" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "48" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/tatooine/frn_tatt_chair_cantina_seat.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Tat Cantina Seat s1.")

-- Tat Cantina Seat s1
	     elseif (optionLink == "49" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "49" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/tatooine/frn_tatt_chair_cantina_seat_3.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Tat Cantina Seat s2.")

		
	-- 50 coin Options

                -- Microphone s1
	     elseif (optionLink == "22" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "22" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/microphone_s01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Microphone s1.")
		
                -- Microphone s2
	     elseif (optionLink == "23" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "23" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/microphone_s02.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Microphone s2.")
		
                -- Radar Screen
	     elseif (optionLink == "24" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "24" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_desk_radar_topology_screen.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Radar Screen.")
		
                -- A Bacta Tank
	     elseif (optionLink == "25" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "25" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/item/quest/force_sensitive/bacta_tank.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received A Bacta Tank.")
		
                -- A Throw Pillow s1
	     elseif (optionLink == "26" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "26" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_throwpillow_med_s01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received A Throw Pillow s1.")
		
                -- A Throw Pillow s2
	     elseif (optionLink == "27" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "27" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_throwpillow_med_s02.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received A Throw Pillow s2.")
		
                -- A Throw Pillow s3
	     elseif (optionLink == "28" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "28" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_throwpillow_med_s03.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received A Throw Pillow s3.")
		
                -- Darkside Banner
	     elseif (optionLink == "29" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "29" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/jedi/frn_all_banner_dark.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Darkside Banner.")

		-- Lightside Banner
	     elseif (optionLink == "30" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "30" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/jedi/frn_all_banner_light.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lightside Banner.")

		-- Darkside Table 1
	     elseif (optionLink == "31" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "31" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/jedi/frn_all_table_dark_01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Darkside Table 1.")

		-- Darkside Table 2
	     elseif (optionLink == "32" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "32" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/jedi/frn_all_table_dark_02.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Darkside Table 2.")

		-- Lightside Table 1
	     elseif (optionLink == "33" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "33" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/jedi/frn_all_table_light_01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lightside Table 1.")

               -- Lightside Table 2
	     elseif (optionLink == "34" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "34" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/jedi/frn_all_table_light_02.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lightside Table 2.")

               -- Darkside Chair
	     elseif (optionLink == "35" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "35" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Darkside Chair.")

		-- Darkside Throne
	     elseif (optionLink == "36" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "36" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/jedi/frn_all_dark_throne.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Darkside Throne.")

		-- Lightside Chair 01
	     elseif (optionLink == "37" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "37" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/jedi/frn_all_light_chair_s01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Lightside Chair 01.")

		-- Lightside Chair 02
	     elseif (optionLink == "38" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "38" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/jedi/frn_all_light_chair_s02.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Lightside Chair 02.")

		-- Lightside Throne
	     elseif (optionLink == "39" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "39" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/jedi/frn_all_light_throne.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Lightside Throne.")

		-- Jedi Council Seat
	     elseif (optionLink == "40" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "40" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_jedi_council_seat.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Jedi Council Seat.")

		-- Darkside Chair (2)
	     elseif (optionLink == "41" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "41" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/jedi/frn_all_dark_chair_s02.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Darkside Chair (2).")

               -- Modern Couch Style 2
	     elseif (optionLink == "43" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "43" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/modern/couch_modern_style_02.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Modern Couch s2.")

               -- Tat Large Fruit Stand
	     elseif (optionLink == "44" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "44" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/tatooine/frn_tato_fruit_stand_large_style_01.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Large Fruit Stand.")

              -- Tat Cantina Couch
	     elseif (optionLink == "50" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "50" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/tatooine/frn_tatt_chair_cantina_seat_2.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Tat Cantina Couch.")

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


function bloodfin_decoration_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

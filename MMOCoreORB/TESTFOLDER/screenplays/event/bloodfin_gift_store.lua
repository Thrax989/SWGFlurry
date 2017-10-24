local ObjectManager = require("managers.object.object_manager")

bloodfin_gift_store = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "bloodfin_gift_store",
   states = {}, 
}

registerScreenPlay("bloodfin_gift_store", true)

function bloodfin_gift_store:start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
   local pMerchant = spawnMobile("corellia", "bloodfin_gift_store", 1, -127.0, 28, -4666.0, 179, 0 )

end

bloodfin_gift_store_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function bloodfin_gift_store_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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

		--Five coin Screen

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

	-- 5 coin Options

		-- Squid Hologram
	     elseif (optionLink == "1" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/ep3_rewards/avatar_hologram_squid.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Squid Hologram. ")

		-- Imperial Insignia Hologram
	     elseif (optionLink == "2" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/ep3_rewards/hologram_insignia_imperial_01.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Imperial Insignia Hologram.")

		-- Rebel Insignia Hologram
	     elseif (optionLink == "3" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/ep3_rewards/hologram_insignia_rebel_01.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rebel Insignia Hologram. ")

               -- Star Destroyer Hologram
	     elseif (optionLink == "4" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/ep3_rewards/hologram_stardestroyer_01.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Star Destroyer Hologram. ")

              -- Tie Fighter Hologram
	     elseif (optionLink == "5" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/ep3_rewards/hologram_tiefighter_01.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a TIE fighter Hologram.")

		-- YT-1300 Hologram
	     elseif (optionLink == "6" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/ep3_rewards/hologram_yt1300_01.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a YT-1300 Hologram.")

		-- X-Wing Hologram
	     elseif (optionLink == "7" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/hologram_xwing.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a X-Wing Hologram.")

		-- Nebulon Frigate Hologram
	     elseif (optionLink == "8" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/hologram_nebulon_frigate.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Nebulon Frigate Hologram.")
		
                -- Death Star Hologram
	     elseif (optionLink == "9" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series5/decorative_deathstar_hologram.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Death Star Hologram.")

                -- Desktop Diagnostic Screen
	     elseif (optionLink == "57" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "57" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/diagnostic_screen.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Desktop Diagnostic Screen.")


	-- 10 coin Options

		-- Fedora Hat
	     elseif (optionLink == "10" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/hat/hat_fedora__s01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Fedora Hat.")

		-- A Wampa Snow Globe
	     elseif (optionLink == "11" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/item/wampa_snow_globe.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Wampa Snow Globe.")

		-- Rebel Community Painting
	     elseif (optionLink == "12" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/rebel_community_painting_2008.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rebel Community Painting.")

		-- Imperial Community Painting
	     elseif (optionLink == "13" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/imperial_community_painting_2008.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Imperial Comminity Painting.")

		-- Decorative Fishtank
	     elseif (optionLink == "14" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series1/decorative_fish_tank.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Decorative Fish Tank.")

		-- Display Case Style 1
	     elseif (optionLink == "15" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series1/decorative_display_case_01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Display Case Style 1.")

		-- Display Case Style 2
	     elseif (optionLink == "16" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series1/decorative_display_case_02.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Display Case Style 2.")

                -- Wampa Skin Rug
	     elseif (optionLink == "17" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series3/decorative_wompa_skin_rug.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Wampa Skin Rug.")
		
                -- Droid Oil Bath
	     elseif (optionLink == "18" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series4/decorative_droid_oil_bath.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Droid Oil Bath.")
		
                -- Jabbas Bed
	     elseif (optionLink == "19" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series6/decorative_jabba_bed.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Jabba's Bed.")
		
                -- Palpatine Hologram
	     elseif (optionLink == "20" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series8/decorative_palpatine_hologram.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Palpatine Hologram.")
		
                -- Space Battle Special Hologram
	     elseif (optionLink == "21" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "21" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/hologram/hologram_ff_space_battle_2010.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Space Battle Hologram.")
		
                -- Hologram HK47
	     elseif (optionLink == "22" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "22" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/hologram/hologram_hk47.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a HK47 Hologram.")
		
	-- 30 coin Options

                -- Boba Fett Portrait
	     elseif (optionLink == "23" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "23" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Portrait of Boba Fett.")
		
                -- Obi Wan Wanted
	     elseif (optionLink == "24" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "24" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Poster of Obi Wan Wanted.")
		
                -- IG88 In Combat
	     elseif (optionLink == "25" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "25" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_03.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received IG88 In Combat Poster.")
		
                -- AT-ST Breach
	     elseif (optionLink == "26" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "26" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_04.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received an AT-ST Breach Poster.")
		
                -- A Portrait of Yoda
	     elseif (optionLink == "27" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "27" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_05.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Portrait of Yoda.")
		
                -- Bloodfin Logo
	     elseif (optionLink == "28" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "28" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_06.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Bloodfin Poster.")
		
                -- Portrait of the Emperor
	     elseif (optionLink == "29" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "29" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_08.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Portrait of the Emperor.")
		
                -- Jawa Warlord
	     elseif (optionLink == "30" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "30" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_09.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received Jawa Warlord Portrait.")

		-- Theed Starport Background
	     elseif (optionLink == "31" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "31" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_wide_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Theed Starport Backdrop.")

		-- Theed Plaza Background
	     elseif (optionLink == "32" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "32" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_wide_02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Theed Plaza Backdrop.")

		-- Darklighter Residence Backdrop
	     elseif (optionLink == "33" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "33" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_wide_03.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Darklighter Residence Bsckdrop.")

		-- Nashal River Backdrop
	     elseif (optionLink == "34" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "34" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_wide_04.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received aNashal River Backdrop.")

               -- Lok Asteroids Backdrop
	     elseif (optionLink == "35" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "35" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_wide_05.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Lok Asteroids Backdrop.")

               -- Space Nebula Backdrop
	     elseif (optionLink == "36" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "36" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_wide_06.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Space Nebula Backdrop.")

		-- Theed Halls Backdrop
	     elseif (optionLink == "37" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "37" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_wide_07.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Theed Halls Backdrop.")

		-- ISD Garage Backdrop
	     elseif (optionLink == "38" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "38" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_wide_08.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received ISD Garage Backdrop.")

		-- Tatooine Industrial Backdrop
	     elseif (optionLink == "39" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "39" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/item/entertainer_console/stage_generated_backdrop_wide_10.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Tatooine Industrial Backdrop.")

		-- Yoda Fountain
	     elseif (optionLink == "40" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "40" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/buildout/event/empire_day_yoda_fountain.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Yoda Fountain.")

		-- Indoor Fountain (1)
	     elseif (optionLink == "41" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "41" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series1/decorative_indoor_fountain_01.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Indoor Fountain (1).")

		-- Indoor Fountain (2)
	     elseif (optionLink == "42" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "42" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series1/decorative_indoor_fountain_02.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Indoor Fountain (2).")

		-- Starmap Painting
	     elseif (optionLink == "56" and itemCounter < 30) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "56" and itemCounter >= 30) then
	            local pItem = giveItem(pInventory, "object/tangible/painting/painting_starmap.iff", -1)
	            DeleteItems = 30
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Starmap Painting.")

	--50 coin Options

		-- Vader's meditation pod
	     elseif (optionLink == "43" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "43" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series8/vader_pod.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received Vader's meditation pod.")

		-- starship storage device
	     elseif (optionLink == "44" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "44" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/saga_system/rewards/starship_storage_device.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a starship storage device.")

		-- Emperor's chair
	     elseif (optionLink == "45" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "45" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/veteran_reward/frn_vet_emp_chair.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received the Emperor's chair.")

		-- Camp chair
	     elseif (optionLink == "46" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "46" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/camp/camp_chair_s3.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a camp chair.")

		-- Bar piece, Straight style 1 (90 degree angle)
	     elseif (optionLink == "47" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "47" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/modern/bar_piece_straight_s1.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a straight bar piece, style 1.")

		-- Bar piece, Straight style 2
	     elseif (optionLink == "48" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "48" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/modern/bar_piece_straight_s2.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a straight bar piece, style 2.")


	     elseif (optionLink == "49" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "49" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series8/wearable_alliance_cape.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received your cape.")

	     elseif (optionLink == "50" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "50" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series8/wearable_light_jedi_cape.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received your cape.")

	     elseif (optionLink == "51" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "51" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series8/wearable_imp_cape.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received your cape.")

	     elseif (optionLink == "52" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "52" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series8/wearable_sith_cape.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received your cape..")

	     elseif (optionLink == "53" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "53" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series8/wearable_revan_cape.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received your cape.")

	     elseif (optionLink == "54" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "54" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series8/wearable_bh_cape.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received your cape.")

	     elseif (optionLink == "55" and itemCounter < 50) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "55" and itemCounter >= 50) then
	            local pItem = giveItem(pInventory, "object/tangible/tcg/series8/wearable_lando_cape.iff", -1)
	            DeleteItems = 50
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received your cape.")


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


function bloodfin_gift_store_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

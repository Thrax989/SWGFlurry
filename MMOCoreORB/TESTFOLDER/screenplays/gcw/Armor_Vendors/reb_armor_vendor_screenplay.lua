reb_armor_vendor_screenplay = ScreenPlay:new {
	numberOfActs = 1,
   questString = "reb_armor_vendor",
   states = {},
}

registerScreenPlay("reb_armor_vendor_screenplay", true)
local ObjectManager = require("managers.object.object_manager")

function reb_armor_vendor_screenplay:start()
   local pMerchant = spawnMobile("corellia", "reb_armor_vendor",  1, -155.6, 28, -4702.6, 90, 0  )
end

reb_armor_vendor_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }
function reb_armor_vendor_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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
			local isImperial = creature:isRebel()
			local isRebel = creature:isRebel()
			local isImperial = creature:isRebel()
			local playerObjPointer = creature:getPlayerObject()
			local playerObj = LuaPlayerObject(playerObjPointer)
			local player = LuaSceneObject(conversingPlayer)

-- Main screen selects
				-- Rebel Marine Armor Options
			if (optionLink == "marine_armor") then
				nextConversationScreen = conversation:getScreen("marine_armor_screen")
				--return nextConversationScreen

				-- Rebeal Assault Schematic Options
			elseif (optionLink == "assault_schems") then
				nextConversationScreen = conversation:getScreen("assault_schems_screen")
				--return nextConversationScreen

				-- Rebeal Battle Schematic Options
			elseif (optionLink == "battle_schems") then
				nextConversationScreen = conversation:getScreen("battle_schems_screen")
				--return nextConversationScreen
			elseif (creature:getFaction() == 370444368) then

				--Get conversing players inventory
				local pInventory = CreatureObject(conversingPlayer):getSlottedObject("inventory") 		
		 		if (pInventory == nil) then 
					return 0
				end 
			
--Rebel Marine Armor Options
				-- Rebel Marine Left Bicep
				if (optionLink == "3") then
					if playerObj:getFactionStanding("rebel") >= 2000 then
						local pItem = giveItem(pInventory, "object/tangible/wearables/armor/marine/armor_marine_bicep_l.iff", -1)
						playerObj:decreaseFactionStanding("rebel",2000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Marine Left Bicep.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

--[[
				-- Left Rebel Marine Bracer (NOT YET IN PUBLISH)
				elseif (optionLink == "1") then
					if playerObj:getFactionStanding("rebel") >= 1350 then
						local pItem = giveItem(pInventory, "object/tangible/wearables/armor/marine/armor_marine_bracer_l.iff", -1)
						playerObj:decreaseFactionStanding("rebel",1350)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Left Rebel Marine Bracer.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

				-- Right Rebel Marine Bracer (NOT YET IN PUBLISH)
				elseif (optionLink == "2") then
					if playerObj:getFactionStanding("rebel") >= 1350 then
						local pItem = giveItem(pInventory, "object/tangible/wearables/armor/marine/armor_marine_bracer_r.iff", -1)
						playerObj:decreaseFactionStanding("rebel",1350)

						nextConversationScreen = conversation:getScreen("end")

						creature:sendSystemMessage("You have received a Right Rebel Marine Bracer.")

					else

						nextConversationScreen = conversation:getScreen("notenough_faction")

						creature:sendSystemMessage("You dont have enough FP")

					end
---]]

				-- Rebel Marine Right Bicep
				elseif (optionLink == "4") then
					if playerObj:getFactionStanding("rebel") >= 2000 then
						local pItem = giveItem(pInventory, "object/tangible/wearables/armor/marine/armor_marine_bicep_r.iff", -1)
						playerObj:decreaseFactionStanding("rebel",2000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Marine Right Bicep.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Marine Helmet
				elseif (optionLink == "5") then
					if playerObj:getFactionStanding("rebel") >= 3000 then
						local pItem = giveItem(pInventory, "object/tangible/wearables/armor/marine/armor_marine_helmet.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Marine Helmet.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Marine Boots
				elseif (optionLink == "6") then
					if playerObj:getFactionStanding("rebel") >= 3000 then
						local pItem = giveItem(pInventory, "object/tangible/wearables/armor/marine/armor_marine_boots.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received Rebel Marine Boots.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
--[[
				-- Rebel Marine Gloves (NOT YET IN PUBLISH)
				elseif (optionLink == "7") then
					if playerObj:getFactionStanding("rebel") >= 3000 then
						local pItem = giveItem(pInventory, "object/tangible/wearables/armor/marine/armor_marine_gloves.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received Rebel Marine Gloves.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
]]
				-- Rebel Marine Chest Plate
				elseif (optionLink == "8") then
					if playerObj:getFactionStanding("rebel") >= 3500 then
						local pItem = giveItem(pInventory, "object/tangible/wearables/armor/marine/armor_marine_chest_plate.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3500)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Marine Chest Plate.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Marine Leggings
				elseif (optionLink == "9") then
					if playerObj:getFactionStanding("rebel") >= 3500 then
						local pItem = giveItem(pInventory, "object/tangible/wearables/armor/marine/armor_marine_leggings.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3500)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received Rebel Marine Leggings.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

--Rebel Assault Schematic Options
				-- Rebel Assault Bracer l Schematic
				elseif (optionLink == "10") then
					if playerObj:getFactionStanding("rebel") >= 1350 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/rebel_assault_bracer_l_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",1350)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Bracer l Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

				-- Rebel Assault Bracer r Schematic
				elseif (optionLink == "11") then
					if playerObj:getFactionStanding("rebel") >= 1350 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/rebel_assault_bracer_r_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",1350)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Bracer r Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

				-- Rebel Assault Bicep l Schematic
				elseif (optionLink == "12") then
					if playerObj:getFactionStanding("rebel") >= 2000 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/rebel_assault_bicep_l_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",2000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Bicep l Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Assault Bicep r Schematic
				elseif (optionLink == "13") then
					if playerObj:getFactionStanding("rebel") >= 2000 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/rebel_assault_bicep_r_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",2000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Bicep r Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Assault Helmet Schematic
				elseif (optionLink == "14") then
					if playerObj:getFactionStanding("rebel") >= 3000 then
						local pItem = giveItem(pInventory, "object/tangible/wearables/armor/rebel_assault/armor_rebel_assault_helmet.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Helmet Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Assault Boots Schematic
				elseif (optionLink == "15") then
					if playerObj:getFactionStanding("rebel") >= 3000 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/rebel_assault_boots_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Boots Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Assault Gloves Schematic
				elseif (optionLink == "16") then
					if playerObj:getFactionStanding("rebel") >= 3000 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/rebel_assault_gloves_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Gloves Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Assault Chest Plate Schematic
				elseif (optionLink == "17") then
					if playerObj:getFactionStanding("rebel") >= 3500 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/rebel_assault_chest_plate_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3500)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Chest Plate Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Assault Leggings Schematic
				elseif (optionLink == "18") then
					if playerObj:getFactionStanding("rebel") >= 3500 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/rebel_assault_leggings_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3500)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Leggings Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
--Rebel Battle Schematic Options
				-- Rebel Battle Bracer l Schematic
				elseif (optionLink == "19") then
					if playerObj:getFactionStanding("rebel") >= 1350 then
						local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_rebel_battle_bracer_l_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",1350)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Bracer l Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

				-- Rebel Battle Bracer r Schematic
				elseif (optionLink == "20") then
					if playerObj:getFactionStanding("rebel") >= 1350 then
						local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_rebel_battle_bracer_r_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",1350)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Bracer r Schematic.")
					else

						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

				-- Rebel Battle Bicep l Schematic
				elseif (optionLink == "21") then
					if playerObj:getFactionStanding("rebel") >= 2000 then
						local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_rebel_battle_bicep_l_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",2000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Bicep l Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Battle Bicep r Schematic
				elseif (optionLink == "22") then
					if playerObj:getFactionStanding("rebel") >= 2000 then
						local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_rebel_battle_bicep_r_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",2000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Bicep r Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Battle Boots Schematic
				elseif (optionLink == "23") then
					if playerObj:getFactionStanding("rebel") >= 3000 then
						local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_rebel_battle_boots_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Helmet Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Battle Gloves Schematic
				elseif (optionLink == "24") then
					if playerObj:getFactionStanding("rebel") >= 3000 then
						local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_rebel_battle_gloves_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Boots Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Battle Belt Schematic
				elseif (optionLink == "25") then
					if playerObj:getFactionStanding("rebel") >= 3000 then
						local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_rebel_battle_belt_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Gloves Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Battle Helmet Schematic
				elseif (optionLink == "26") then
					if playerObj:getFactionStanding("rebel") >= 3500 then
						local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_rebel_battle_helmet_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3500)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Chest Plate Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Battle Leggings Schematic
				elseif (optionLink == "27") then
					if playerObj:getFactionStanding("rebel") >= 3500 then
						local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_rebel_battle_leggings_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3500)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Leggings Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")

						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Rebel Battle Chest Plate Schematic
				elseif (optionLink == "28") then
					if playerObj:getFactionStanding("rebel") >= 3500 then
						local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_rebel_battle_chest_plate_schematic.iff", -1)
						playerObj:decreaseFactionStanding("rebel",3500)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Rebel Assault Leggings Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end			
				end
			else
				--nextConversationScreen = conversation:getScreen("wrong_faction")
				creature:sendSystemMessage("You are not a member of the Rebel Alliance.")
			end 
		end
	end

    -- end of the conversation logic.
   return nextConversationScreen
end

function reb_armor_vendor_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

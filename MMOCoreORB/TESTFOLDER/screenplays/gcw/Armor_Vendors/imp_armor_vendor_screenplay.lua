imp_armor_vendor_screenplay = ScreenPlay:new {
	numberOfActs = 1,
   questString = "imp_armor_vendor",
   states = {},
}

registerScreenPlay("imp_armor_vendor_screenplay", true)
local ObjectManager = require("managers.object.object_manager")

function imp_armor_vendor_screenplay:start()
   local pMerchant = spawnMobile("corellia", "imp_armor_vendor",  1, -155.6, 28, -4697.3, 90, 0  )
end

imp_armor_vendor_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function imp_armor_vendor_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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
				-- Stormtrooper Schematic Options
			if (optionLink == "stormtrooper_schems") then
				nextConversationScreen = conversation:getScreen("stormtrooper_schems_screen")
				--return nextConversationScreen

				-- Scout trooper Schematic Options
			elseif (optionLink == "scout_schems") then
				nextConversationScreen = conversation:getScreen("scout_schems_screen")
				--return nextConversationScreen

				-- Assault trooper Schematic Options
			elseif (optionLink == "assault_schems") then
				nextConversationScreen = conversation:getScreen("assault_schems_screen")
				--return nextConversationScreen
			elseif (creature:getFaction() == 3679112276 ) then
			local varFaction = creature:getFaction()

				--Get conversing players inventory
				local pInventory = CreatureObject(conversingPlayer):getSlottedObject("inventory")
		 		if (pInventory == nil) then
					return 0
				end

--Stormtrooper Schematic Options
				-- Stormtrooper Left Bracer
				if (optionLink == "1") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_stormtrooper_bracer_l_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Stormtrooper Left Bracer Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

				-- Stormtrooper Right Bracer
				elseif (optionLink == "2") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_stormtrooper_bracer_r_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Stormtrooper Right Bracer Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

				-- Stormtrooper Left Bicep
				elseif (optionLink == "3") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_stormtrooper_bicep_l_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Stormtrooper Left Bicep Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

				-- Stormtrooper Right Bicep
				elseif (optionLink == "4") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_stormtrooper_bicep_r_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Stormtrooper Right Bicep Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Stormtrooper Boots
				elseif (optionLink == "5") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_stormtrooper_boots_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Stormtrooper Boots Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Stormtrooper Gloves
				elseif (optionLink == "6") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_stormtrooper_gloves_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Stormtrooper Gloves Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Stormtrooper Belt
				elseif (optionLink == "7") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_stormtrooper_utility_belt_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Stormtrooper Belt Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Stormtrooper Helmet
				elseif (optionLink == "8") then
					if playerObj:getFactionStanding("imperial") >= 2100 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_stormtrooper_helmet_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",2100)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Stormtrooper Helmet Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Stormtrooper Leggings
				elseif (optionLink == "9") then
					if playerObj:getFactionStanding("imperial") >= 2100 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_stormtrooper_leggings_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",2100)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Stormtrooper Leggings Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Stormtrooper Chest Plate
				elseif (optionLink == "10") then
					if playerObj:getFactionStanding("imperial") >= 4000 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_stormtrooper_chest_plate_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",4000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Stormtrooper Chest Plate Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

--Scout trooper Armor Schematic Options
				-- Scout trooper Left Bracer
				elseif (optionLink == "11") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_scout_trooper_bracer_l_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Scout Trooper Left Bracer Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end


				-- Scout Trooper Right Bracer
				elseif (optionLink == "12") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_scout_trooper_bracer_r_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Scout Trooper Right Bracer Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

				-- Scout Trooper Left Bicep
				elseif (optionLink == "13") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_scout_trooper_bicep_l_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Scout Trooper Left Bicep Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")

					end

				-- Scout Trooper Right Bicep
				elseif (optionLink == "14") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_scout_trooper_bicep_r_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Scout Trooper Right Bicep Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Scout Trooper Boots
				elseif (optionLink == "15") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_scout_trooper_boots_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Scout Trooper Boots Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Scout Trooper Gloves
				elseif (optionLink == "16") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_scout_trooper_gloves_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Scout Trooper Gloves Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Scout Trooper Helmet
				elseif (optionLink == "17") then
					if playerObj:getFactionStanding("imperial") >= 2100 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_scout_trooper_helmet_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",2100)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Scout Trooper Helmet Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Scout Trooper Leggings
				elseif (optionLink == "18") then
					if playerObj:getFactionStanding("imperial") >= 2100 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_scout_trooper_leggings_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",2100)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Scout Trooper Leggings Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Scout Trooper Chest Plate
				elseif (optionLink == "19") then
					if playerObj:getFactionStanding("imperial") >= 4000 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_scout_trooper_chest_plate_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",4000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Scout Trooper Chest Plate Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

--Assault trooper Schematic Options

				-- Assault Trooper Left Bracer
				elseif (optionLink == "20") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_assault_trooper_bracer_l_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received an Assault Trooper Left Bracer Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end


				-- Assault Trooper Right Bracer
				elseif (optionLink == "21") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_assault_trooper_bracer_r_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received an Assault Trooper Right Bracer Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

				-- Assault Trooper Left Bicep
				elseif (optionLink == "22") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_assault_trooper_bicep_l_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received Assault Trooper Left Bicep Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end

				-- Assault Trooper Right Bicep
				elseif (optionLink == "23") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_assault_trooper_bicep_r_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received an Assault Trooper Right Bicep Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Assault Trooper Boots
				elseif (optionLink == "24") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_assault_trooper_boots_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received Assault Trooper Boots Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Assault Trooper Gloves
				elseif (optionLink == "25") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_assault_trooper_gloves_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Assault Trooper Gloves Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Assault Trooper Belt
				elseif (optionLink == "26") then
					if playerObj:getFactionStanding("imperial") >= 1400 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_assault_trooper_utility_belt_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",1400)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received Assault Trooper Belt Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Assault Trooper Helmet
				elseif (optionLink == "27") then
					if playerObj:getFactionStanding("imperial") >= 2100 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_assault_trooper_helmet_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",2100)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received Assault Trooper Helmet Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Assault Trooper Leggings
				elseif (optionLink == "28") then
					if playerObj:getFactionStanding("imperial") >= 2100 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_assault_trooper_leggings_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",2100)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received Assault Trooper Leggings Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				-- Assault Trooper Chest Plate
				elseif (optionLink == "29") then
					if playerObj:getFactionStanding("imperial") >= 4000 then
						local pItem = giveItem(pInventory, "object/tangible/loot/factional_schematic/imperial_assault_trooper_chest_plate_schematic.iff", -1)
						playerObj:decreaseFactionStanding("imperial",4000)
						nextConversationScreen = conversation:getScreen("end")
						creature:sendSystemMessage("You have received a Assault Trooper Chest Plate Schematic.")
					else
						nextConversationScreen = conversation:getScreen("notenough_faction")
						creature:sendSystemMessage("You dont have enough FP")
					end
				end
			else
				--nextConversationScreen = conversation:getScreen("wrong_faction")
				creature:sendSystemMessage("You are not a member of the Empire.")
			end
		end
	end
    -- end of the conversation logic.
   return nextConversationScreen
end

function imp_armor_vendor_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

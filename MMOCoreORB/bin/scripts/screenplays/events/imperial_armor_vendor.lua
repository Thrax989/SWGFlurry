local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

imperial_armor = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "imperial_armor_task",
   states = {}, 
}

registerScreenPlay("imperial_armor", true)

function imperial_armor:start() 
   local pMerchant = spawnMobile("naboo", "imperial_armor_vendor", 1, -4932.18, 6, 4229.73, 273, 0 )

end

imperial_armor_convo_handler = Object:new {
   tstring = "conversation_armor_dealer"
 }

function imperial_armor_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
   local creature = LuaCreatureObject(conversingPlayer)
   local convosession = creature:getConversationSession()
   lastConversation = nil
   local conversation = LuaConversationTemplate(conversationTemplate)
   local nextConversationScreen 
   
   if ( conversation ~= nil ) then
      if ( convosession ~= nil ) then
          local session = LuaConversationSession(convosession)
          if ( session ~= nil ) then
             lastConversationScreen = session:getLastConversationScreen()
          end
      end
      
      if ( lastConversationScreen == nil ) then
         nextConversationScreen = conversation:getInitialScreen()
      else
         local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
         
         local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
         nextConversationScreen = conversation:getScreen(optionLink)
         
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
	         	if (InvObj:getObjectName() == "imperial_credit")   then
	         		itemCounter = itemCounter + 1
	         	end
	     end
	  
         if (SceneObject(pInventory):isContainerFullRecursive()) then
	            nextConversationScreen = conversation:getScreen("insufficient_space")
	            creature:sendSystemMessage("You do not have enough inventory space")  



	elseif (optionLink == "items") then
		nextConversationScreen = conversation:getScreen("items_screen")


--ST Armor

	     elseif (optionLink == "1" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_bicep_l_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Stormtrooper Bicep Left Schematic Purchased")

	     elseif (optionLink == "2" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_bicep_r_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Stormtrooper Bicep Right Schematic Purchased.")

	     elseif (optionLink == "3" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_bracer_l_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Stormtrooper Bracer Left Schematic Purchased.")

	     elseif (optionLink == "4" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_bracer_r_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Stormtrooper Bracer Right Schematic Purchased.")

	     elseif (optionLink == "5" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_helmet_schematic.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Stormtrooper Helmet Schematic Purchased.")

	     elseif (optionLink == "6" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_chest_plate_schematic.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Stormtrooper Chest Plate Schematic Purchased.")		    

	     elseif (optionLink == "7" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_leggings_schematic.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Stormtrooper Leg Plates Schematic Purchased.")

	     elseif (optionLink == "8" and itemCounter < 2) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 2) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_boots_schematic.iff", -1)
	            DeleteItems = 2
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Stormtrooper Boots Schematic Purchased.")

	     elseif (optionLink == "9" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_gloves_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Stormtrooper Gloves Schematic Purchased.")

--Camo ST Armor
	
	 elseif (optionLink == "10" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_bicep_l_camo_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Stormtrooper Bicep Left Schematic Purchased")

	     elseif (optionLink == "11" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_bicep_r_camo_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Stormtrooper Bicep Right Schematic Purchased.")

	     elseif (optionLink == "12" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_bracer_l_camo_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Stormtrooper Bracer Left Schematic Purchased.")

	     elseif (optionLink == "13" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_bracer_r_camo_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Stormtrooper Bracer Right Schematic Purchased.")

	     elseif (optionLink == "14" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_helmet_camo_schematic.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Stormtrooper Helmet Schematic Purchased.")

	     elseif (optionLink == "15" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_chest_plate_camo_schematic.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Stormtrooper Chest Plate Schematic Purchased.")		    

	     elseif (optionLink == "16" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_leggings_camo_schematic.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Stormtrooper Leg Plates Schematic Purchased.")

	     elseif (optionLink == "17" and itemCounter < 2) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 2) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_boots_camo_schematic.iff", -1)
	            DeleteItems = 2
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Stormtrooper Boots Schematic Purchased.")

	     elseif (optionLink == "18" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/stormtrooper_gloves_camo_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Stormtrooper Gloves Schematic Purchased.")

--Command Barc
		     elseif (optionLink == "19" and itemCounter < 25) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 25) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/imperial_barc_speeder_schematic.iff", -1)
	            DeleteItems = 25
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Imperial Command BARC Schematic Purchased.")

--Crates

		     elseif (optionLink == "20" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/item/loot_crates/gold_crate.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Gold Tier 2 Loot Crate Purchased.")

	     elseif (optionLink == "21" and itemCounter < 25) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "21" and itemCounter >= 25) then
	            local pItem = giveItem(pInventory, "object/tangible/item/loot_crates/plat_crate.iff", -1)
	            DeleteItems = 25
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Platinum Tier 3 Loot Crate Purchased.")



          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
		     	if (invObj:getObjectName() == "imperial_credit" and DeleteItems > 0 ) then
		     		DeleteItems = DeleteItems - 1
		     		invObj:destroyObjectFromWorld()
					invObj:destroyObjectFromDatabase()
		       	end
   		  end

   		  
 	

      end
   end
   return nextConversationScreen
   
end


function imperial_armor_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

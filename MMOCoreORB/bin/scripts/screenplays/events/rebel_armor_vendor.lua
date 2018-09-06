local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

rebel_armor = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "rebel_armor_task",
   states = {}, 
}

registerScreenPlay("rebel_armor", true)

function rebel_armor:start() 
   local pMerchant = spawnMobile("naboo", "rebel_armor_vendor", 1, -4867.11, 6, 4047.67, 273, 0 )

end

rebel_armor_convo_handler = Object:new {
   tstring = "conversation_armor_dealer"
 }

function rebel_armor_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	         	if (InvObj:getObjectName() == "rebel_credit")   then
	         		itemCounter = itemCounter + 1
	         	end
	     end
	  
         if (SceneObject(pInventory):isContainerFullRecursive()) then
	            nextConversationScreen = conversation:getScreen("insufficient_space")
	            creature:sendSystemMessage("You do not have enough inventory space")  



	elseif (optionLink == "items") then
		nextConversationScreen = conversation:getScreen("items_screen")


--RA Armor

	     elseif (optionLink == "1" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_bicep_l_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Rebel Assault Bicep Left Schematic Purchased")

	     elseif (optionLink == "2" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_bicep_r_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Rebel Assault Bicep Right Schematic Purchased.")

	     elseif (optionLink == "3" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_bracer_l_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Rebel Assault Bracer Left Schematic Purchased.")

	     elseif (optionLink == "4" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_bracer_r_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Rebel Assault Bracer Right Schematic Purchased.")

	     elseif (optionLink == "5" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_helmet_schematic.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Rebel Assault Helmet Schematic Purchased.")

	     elseif (optionLink == "6" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_chest_plate_schematic.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Rebel Assault Chest Plate Schematic Purchased.")		    

	     elseif (optionLink == "7" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_leggings_schematic.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Rebel Assault Leg Plates Schematic Purchased.")

	     elseif (optionLink == "8" and itemCounter < 2) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 2) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_boots_schematic.iff", -1)
	            DeleteItems = 2
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Rebel Assault Boots Schematic Purchased.")

	     elseif (optionLink == "9" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_gloves_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Rebel Assault Gloves Schematic Purchased.")

--Camo RA Armor
	
	 elseif (optionLink == "10" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_bicep_l_camo_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Rebel Assault Bicep Left Schematic Purchased")

	     elseif (optionLink == "11" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_bicep_r_camo_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Rebel Assault Bicep Right Schematic Purchased.")

	     elseif (optionLink == "12" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_bracer_l_camo_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Rebel Assault Bracer Left Schematic Purchased.")

	     elseif (optionLink == "13" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_bracer_r_camo_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Rebel Assault Bracer Right Schematic Purchased.")

	     elseif (optionLink == "14" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_helmet_camo_schematic.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Rebel Assault Helmet Schematic Purchased.")

	     elseif (optionLink == "15" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_chest_plate_camo_schematic.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Rebel Assault Chest Plate Schematic Purchased.")		    

	     elseif (optionLink == "16" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_leggings_camo_schematic.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Rebel Assault Leg Plates Schematic Purchased.")

	     elseif (optionLink == "17" and itemCounter < 2) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 2) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_boots_camo_schematic.iff", -1)
	            DeleteItems = 2
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Rebel Assault Boots Schematic Purchased.")

	     elseif (optionLink == "18" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_assault_gloves_camo_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Camo Rebel Assault Gloves Schematic Purchased.")

--Command Barc
		     elseif (optionLink == "19" and itemCounter < 25) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 25) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/rebel_barc_speeder_schematic.iff", -1)
	            DeleteItems = 25
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Rebel Command BARC Schematic Purchased.")

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
		     	if (invObj:getObjectName() == "rebel_credit" and DeleteItems > 0 ) then
		     		DeleteItems = DeleteItems - 1
		     		invObj:destroyObjectFromWorld()
					invObj:destroyObjectFromDatabase()
		       	end
   		  end
   		  
 	
      end
   end
   return nextConversationScreen
   
end


function rebel_armor_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

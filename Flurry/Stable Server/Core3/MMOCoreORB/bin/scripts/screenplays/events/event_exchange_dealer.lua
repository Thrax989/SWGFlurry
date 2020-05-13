local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

event_exchange_dealer = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "event_exchange_dealer_task",
   states = {}, 
}

registerScreenPlay("event_exchange_dealer", true)

function event_exchange_dealer:start() 
   local pMerchant = spawnMobile("corellia", "event_exchange_dealer", 1, -134.156, 28, -4717.36, 271, 0 )

end

event_exchange_dealer_convo_handler = Object:new {
   tstring = "conversation_event_exchange_dealer"
 }

function event_exchange_dealer_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	         	if (InvObj:getObjectName() == "event_token")   then
	         		itemCounter = itemCounter + 1

		 else	if (InvObj:getObjectName() == "halloween_coin_n")   then
	         		itemCounter = itemCounter + 1
	         	end
	     end
end
         if (SceneObject(pInventory):isContainerFullRecursive()) then
	            nextConversationScreen = conversation:getScreen("insufficient_space")
	            creature:sendSystemMessage("You do not have enough inventory space")  



	elseif (optionLink == "items") then
		nextConversationScreen = conversation:getScreen("items_screen")


--Xeno Furniture

	     elseif (optionLink == "1" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/xeno_desk_lamp.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Xeno Desk Lamp Purchased")

	     elseif (optionLink == "2" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/xeno_table.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Xeno Table Purchased.")

	     elseif (optionLink == "3" and itemCounter < 2) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 2) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/xeno_desk.iff", -1)
	            DeleteItems = 2
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Xeno Desk Purchased.")

	     elseif (optionLink == "4" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/xeno_throne.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Xeno Throne Purchased.")

	     elseif (optionLink == "5" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/xeno_couch.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Xeno Couch Purchased.")

	     elseif (optionLink == "6" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/xeno_rug.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Xeno Rug Purchased.")		    

	     elseif (optionLink == "7" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/emperor_chair.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Emperors Throne Purchased.")

	     elseif (optionLink == "8" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/mustafar/must_display_case.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Display Case Purchased.")

	     elseif (optionLink == "9" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/all/frn_all_gaming_kiosk_s01.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Jabba Rug Purchased.")


--Legacy Galaxy Paintings	
	 elseif (optionLink == "10" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/decorative/event_lifeday07_orb.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Lifeday Orb Purchased")

	     elseif (optionLink == "11" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/cts_corbantis_painting.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Corbantis Painting Purchased.")

	     elseif (optionLink == "12" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/cts_infinity_painting.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Infinity Galaxy Painting Purchased.")

	     elseif (optionLink == "13" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/cts_intrepid_painting.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Intrepid Galaxy Painting Purchased.")

	     elseif (optionLink == "14" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/cts_kauri_painting.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Kauri Galaxy Painting Purchased.")

	     elseif (optionLink == "15" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/cts_kettemoor_painting.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Kettemoor Galaxy Painting Purchased.")		    

	     elseif (optionLink == "16" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/cts_lowca_painting.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Lowca Galaxy Painting Purchased.")

	     elseif (optionLink == "17" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/cts_naritus_painting.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Naritus Galaxy Painting Purchased.")

	     elseif (optionLink == "18" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/cts_scylla_painting.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Scylla Galaxy Painting Purchased.")

		     elseif (optionLink == "19" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/cts_tarquinas_painting.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Tarquinas Galaxy Painting Purchased.")

		     elseif (optionLink == "20" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/cts_tempest_painting.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Tempest Galaxy Painting Purchased.")

		     elseif (optionLink == "21" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "21" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/cts_valcyn_painting.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Valcyn Galaxy Painting Purchased.")

		     elseif (optionLink == "22" and itemCounter < 3) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "22" and itemCounter >= 3) then
	            local pItem = giveItem(pInventory, "object/tangible/furniture/house_cleanup/cts_wanderhome_painting.iff", -1)
	            DeleteItems = 3
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Wanderhome Galaxy Painting Purchased.")




--Crates

		     elseif (optionLink == "23" and itemCounter < 5) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "23" and itemCounter >= 5) then
	            local pItem = giveItem(pInventory, "object/tangible/item/loot_crates/gold_crate.iff", -1)
	            DeleteItems = 5
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Gold Tier 2 Loot Crate Purchased.")

	     elseif (optionLink == "24" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "24" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/item/loot_crates/plat_crate.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Platinum Tier 3 Loot Crate Purchased.")


          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
		     	if (invObj:getObjectName() == "event_token" and DeleteItems > 0 ) then
		     		DeleteItems = DeleteItems - 1
		     		invObj:destroyObjectFromWorld()
					invObj:destroyObjectFromDatabase()

		 else   	if (invObj:getObjectName() == "halloween_coin_n" and DeleteItems > 0 ) then
		     		DeleteItems = DeleteItems - 1
		     		invObj:destroyObjectFromWorld()
					invObj:destroyObjectFromDatabase()
		       		end					
		       	end
   	  end
   end		  
 end	
   
   return nextConversationScreen
   
end


function event_exchange_dealer_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

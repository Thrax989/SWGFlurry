local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

rebel_exchange = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "rebel_exchange_task",
   states = {}, 
}

registerScreenPlay("rebel_exchange", true)

function rebel_exchange:start() 
   local pMerchant = spawnMobile("corellia", "rebel_exchange", 1, -134.156, 28, -4717.36, 271, 0 )

end

rebel_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function rebel_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	         	if (InvObj:getObjectName() == "mt_soup")   then
	         		itemCounter = itemCounter + 1
	         	end
	     end
	  
         if (SceneObject(pInventory):isContainerFullRecursive()) then
	            nextConversationScreen = conversation:getScreen("insufficient_space")
	            creature:sendSystemMessage("You do not have enough inventory space")  



	elseif (optionLink == "items") then
		nextConversationScreen = conversation:getScreen("items_screen")




	     elseif (optionLink == "1" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/container/loot/player_loot_crate.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Item 1.")

	     elseif (optionLink == "2" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/container/loot/player_loot_crate.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Item 2.")

	     elseif (optionLink == "3" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/container/loot/player_loot_crate.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Item 3.")

	     elseif (optionLink == "4" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/container/loot/player_loot_crate.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Item 4.")

	     elseif (optionLink == "5" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/container/loot/player_loot_crate.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Item 5.")

	     elseif (optionLink == "6" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/container/loot/player_loot_crate.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Item 6.")		    

	     elseif (optionLink == "7" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/container/loot/player_loot_crate.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("7.")

	     elseif (optionLink == "8" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/container/loot/player_loot_crate.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Item 8.")

	     elseif (optionLink == "9" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/container/loot/player_loot_crate.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Item 9.")



          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
		     	if (invObj:getObjectName() == "mt_soup" and DeleteItems > 0 ) then
		     		DeleteItems = DeleteItems - 1
		     		invObj:destroyObjectFromWorld()
					invObj:destroyObjectFromDatabase()
		       	end
   		  end
   		  
 	
      end
   end
   return nextConversationScreen
   
end


function rebel_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

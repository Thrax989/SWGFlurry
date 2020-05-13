local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

holo_exchange = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "holo_exchange_task",
   states = {}, 
}

registerScreenPlay("holo_exchange", true)

function holo_exchange:start() 
   local pMerchant = spawnMobile("dantooine", "holo_exchange", 1, 4202.07, 9, 5215.26, 358, 0) 

end

holo_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function holo_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	         	if (InvObj:getObjectName() == "mt_flatbread")   then
	         		itemCounter = itemCounter + 1
	         	end
	     end
	  
         if (SceneObject(pInventory):isContainerFullRecursive()) then
	            nextConversationScreen = conversation:getScreen("insufficient_space")
	            creature:sendSystemMessage("You do not have enough inventory space")  



	elseif (optionLink == "items") then
		nextConversationScreen = conversation:getScreen("items_screen")


	     elseif (optionLink == "1" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/jedi/jedi_holocron_light.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Light Holocron.")

	     elseif (optionLink == "2" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/jedi/jedi_holocron_dark.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("Dark Holocron.")


          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
		     	if (invObj:getObjectName() == "mt_flatbread" and DeleteItems > 0 ) then
		     		DeleteItems = DeleteItems - 1
		     		invObj:destroyObjectFromWorld()
					invObj:destroyObjectFromDatabase()
		       	end
   		  end
   		  
 	
      end
   end
   return nextConversationScreen
   
end


function holo_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

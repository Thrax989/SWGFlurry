local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

jakku_food_exchange = ScreenPlay:new {
   numberOfActs = 1,
   questString = "jakku_food_exchange_task",
   states = {},
}

registerScreenPlay("aurilian_plant_exchange", true)

function jakku_food_exchange:start()
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
   local pMerchant = spawnMobile("jakku", "jakku_dealer", 1, 4352, 9, -5138, 9, 0 )

end

jakku_food_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function jakku_food_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	         	if (InvObj:getObjectName() == "mt_soup")   then
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

		-- Token Screen
	elseif (optionLink == "info") then
		nextConversationScreen = conversation:getScreen("info_screen")
	elseif (optionLink == "items") then
		nextConversationScreen = conversation:getScreen("items_screen")



	--  Option Selections

		-- Aurilian Plant
	     elseif (optionLink == "1" and itemCounter < 10) then
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/misc/mt_flatbread.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Small Food Ration.")



		-- end


          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
     	    -- Get Objectnames from Each Item and check if its the choosen Item.
		     	if (invObj:getObjectName() == "mt_soup" and DeleteItems > 0 ) then
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


function jakku_food_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

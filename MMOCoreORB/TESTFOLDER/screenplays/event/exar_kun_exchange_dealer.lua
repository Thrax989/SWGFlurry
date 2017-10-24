local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

exar_kun_exchange = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "exar_kun_exchange_task",
   states = {}, 
}

registerScreenPlay("exar_kun_exchange", true)

function exar_kun_exchange:start() 
   -- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
   local pMerchant = spawnMobile("corellia", "exar_exchange", 1, -163.5, 28, -4725.9, 88, 0 )

end

exar_kun_exchange_convo_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function exar_kun_exchange_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	         	if (InvObj:getObjectName() == "bones")   then
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

	elseif (optionLink == "items") then
		nextConversationScreen = conversation:getScreen("items_screen")



	--  Option Selections

		-- Exar Kun Cultist Robe Hood Up Male
	     elseif (optionLink == "1" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/robe/exar_cultist_hood_up.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Exar Kun Cultist Robe Hood Up Male Gender.")

		-- Exar Kun Cultist Robe Hood Up Female
	     elseif (optionLink == "2" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/robe/exar_cultist_hood_up_f.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Exar Kun Cultist Robe Hood Up Female Gender.")

		-- Exar Kun Cultist Robe Hood down Male
	     elseif (optionLink == "3" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/robe/exar_cultist_hood_down.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Exar Kun Cultist Robe Hood Down Male Gender.")

		-- Exar Kun Cultist Robe Hood down female
	     elseif (optionLink == "4" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/robe/exar_cultist_hood_down_f.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Exar Kun Cultist Robe Hood Down Female Gender.")

		-- Chronicle Master Robe
	     elseif (optionLink == "5" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/wearables/robe/robe_chronicle_master.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received the Chronicle Master Robe (No stat enhancements).")

		-- Bone Pile Green Fog
	     elseif (optionLink == "6" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/lair/base/poi_all_lair_bones_fog_green.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Force Infused Bone Pile with Green Fog.")		    

		-- Bone Pile Red Fog
	     elseif (optionLink == "7" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/lair/base/poi_all_lair_bones_fog_red.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Force Infused Bone Pile with Red Fog.")

		-- Bone Pile Yellow Fog
	     elseif (optionLink == "8" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/lair/base/poi_all_lair_bones_large_fog_mustard.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Force Infused Bone Pile with Yellow Fog.")

		-- Bone Pile Gray Fog
	     elseif (optionLink == "9" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/lair/base/poi_all_lair_bones_large_fog_gray.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Force Infused Bone Pile with Gray Fog.")

		-- end


          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
     	    -- Get Objectnames from Each Item and check if its the choosen Item.
		     	if (invObj:getObjectName() == "bones" and DeleteItems > 0 ) then
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


function exar_kun_exchange_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end

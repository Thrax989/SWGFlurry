local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

endor_poi_waypoints = ScreenPlay:new {
   numberOfActs = 1,
   questString = "endor_poi_waypoints_task",
   states = {},
}

registerScreenPlay("endor_poi_waypoints", true)

function endor_poi_waypoints:start()
   local pMerchant = spawnMobile("endor", "endor_poi_waypoints", 1, -965.392, 73, 1558, 216, 0)
   local pMerchant = spawnMobile("endor", "endor_poi_waypoints", 1, 3239.87, 24, -3482.78, 261, 0)


end

endor_poi_waypoints_convo_handler = Object:new {
   tstring = "conversation_endor_poi_waypoints"
 }

function endor_poi_waypoints_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
        local pGhost = LuaCreatureObject(conversingPlayer):getPlayerObject()
	local creature = LuaCreatureObject(conversingPlayer)
	local convosession = creature:getConversationSession()
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
			local screen = LuaConversationScreen(nextConversationScreen)
			local screenID = luaLastConversationScreen:getScreenID()
			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
			nextConversationScreen = conversation:getScreen(optionLink)

			if (screenID == "items_screen") then
				if (optionLink == "1") then
					PlayerObject(pGhost):addWaypoint("endor", "Badge:Dulok Villlage", "", 5921, -2514, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "2") then
					PlayerObject(pGhost):addWaypoint("endor", "Ewok Tree Villlage", "", 4661, -2425, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "3") then
					PlayerObject(pGhost):addWaypoint("endor", "Badge:Imp Outpost", "", -4628, -2273, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "4") then
					PlayerObject(pGhost):addWaypoint("endor", "Badge:Lake Villlage", "", 1454, -3272, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
         end
      end
   end
end

   return nextConversationScreen

end


function endor_poi_waypoints_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

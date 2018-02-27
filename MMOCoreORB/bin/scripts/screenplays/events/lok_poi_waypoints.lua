local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

lok_poi_waypoints = ScreenPlay:new {
   numberOfActs = 1,
   questString = "lok_poi_waypoints_task",
   states = {},
}

registerScreenPlay("lok_poi_waypoints", true)

function lok_poi_waypoints:start()
   local pMerchant = spawnMobile("lok", "lok_poi_waypoints", 1, 466.774, 8.76109, 5505.97, 204, 0)

end

lok_poi_waypoints_convo_handler = Object:new {
   tstring = "conversation_lok_poi_waypoints"
 }

function lok_poi_waypoints_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
					PlayerObject(pGhost):addWaypoint("lok", "Badge:Imp Outpost", "", -1814, -3086, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "2") then
					PlayerObject(pGhost):addWaypoint("lok", "Badge:Kimogila Skeleton", "", 4562, -1156, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "3") then
					PlayerObject(pGhost):addWaypoint("lok", "Badge:Volcano", "", 3091, -4638, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
										LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
         end
      end
   end
end

   return nextConversationScreen

end


function lok_poi_waypoints_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

dathomir_poi_waypoints = ScreenPlay:new {
   numberOfActs = 1,
   questString = "dathomir_poi_waypoints_task",
   states = {},
}

registerScreenPlay("dathomir_poi_waypoints", true)

function dathomir_poi_waypoints:start()
   local pMerchant = spawnMobile("dathomir", "dathomir_poi_waypoints", 1, 591.881, 6, 3091.52, 49, 0)
   local pMerchant = spawnMobile("dathomir", "dathomir_poi_waypoints", 1, -69.3447, 18, -1594.4, 35, 0)
   local pMerchant = spawnMobile("dathomir", "dathomir_poi_waypoints", 1, 5289.18, 78.5, -4147.9, 271, 0)

end

dathomir_poi_waypoints_convo_handler = Object:new {
   tstring = "conversation_dathomir_poi_waypoints"
 }

function dathomir_poi_waypoints_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
					PlayerObject(pGhost):addWaypoint("dathomir", "Badge:Crashed Ship", "", 5676, 1901, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "2") then
					PlayerObject(pGhost):addWaypoint("dathomir", "Badge:Escape Pod", "", -4427, 586, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "3") then
					PlayerObject(pGhost):addWaypoint("dathomir", "Badge:Imperial Prison", "", -6141, 973, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "4") then
					PlayerObject(pGhost):addWaypoint("dathomir", "Badge:Misty Falls 1", "", 3558, 1554, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "5") then
					PlayerObject(pGhost):addWaypoint("dathomir", "Badge:Misty Falls 2", "", 3021, 1289, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "6") then
					PlayerObject(pGhost):addWaypoint("dathomir", "Badge:Sarlacc", "", -2101, 3165, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "7") then
					PlayerObject(pGhost):addWaypoint("dathomir", "Badge:Tarpit", "", 652, -4888, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")

         end
      end
   end
end

   return nextConversationScreen

end


function dathomir_poi_waypoints_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

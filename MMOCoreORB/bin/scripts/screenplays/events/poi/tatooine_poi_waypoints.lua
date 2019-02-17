local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

tatooine_poi_waypoints = ScreenPlay:new {
   numberOfActs = 1,
   questString = "tatooine_poi_waypoints_task",
   states = {},
}

registerScreenPlay("tatooine_poi_waypoints", true)

function tatooine_poi_waypoints:start()
  local pMerchant = spawnMobile("tatooine", "tatooine_poi_waypoints", 1, -1271.87, 12, -3592.3, 301, 0)
  local pMerchant = spawnMobile("tatooine", "tatooine_poi_waypoints", 1, 3411.41, 5, -4660.8, 17, 0)
  local pMerchant = spawnMobile("tatooine", "tatooine_poi_waypoints", 1, 1745.7, 7, 3186.89, 241, 0)
  local pMerchant = spawnMobile("tatooine", "tatooine_poi_waypoints", 1, 1410.15, 7, 3469.81, 229, 0)
  local pMerchant = spawnMobile("tatooine", "tatooine_poi_waypoints", 1, 1296.92, 7, 3145.7, 192, 0)
  local pMerchant = spawnMobile("tatooine", "tatooine_poi_waypoints", 1, -2817.4, 5, 2176.94, 356, 0)
  local pMerchant = spawnMobile("tatooine", "tatooine_poi_waypoints", 1, -2910.47, 5, 1927.92, 5, 0)
  local pMerchant = spawnMobile("tatooine", "tatooine_poi_waypoints", 1, -3111.13, 5, 2164.66, 352, 0)
  local pMerchant = spawnMobile("tatooine", "tatooine_poi_waypoints", 1, -2897.18, 5, 2129.42, 290, 0)
end

tatooine_poi_waypoints_convo_handler = Object:new {
   tstring = "conversation_tatooine_poi_waypoints"
 }

function tatooine_poi_waypoints_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
					PlayerObject(pGhost):addWaypoint("tatooine", "Badge:Bens Hut", "", -4512, -2270, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "2") then
					PlayerObject(pGhost):addWaypoint("tatooine", "Badge:Escape Pod", "", -3930, -4425, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "3") then
					PlayerObject(pGhost):addWaypoint("tatooine", "Badge:Krayt Graveyard", "", 7396, 4478, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "4") then
					PlayerObject(pGhost):addWaypoint("tatooine", "Badge:Krayt Skeleton", "", -4650, -4363, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "5") then
					PlayerObject(pGhost):addWaypoint("tatooine", "Badge:Lars Homestead", "", -2579, -5500, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "6") then
					PlayerObject(pGhost):addWaypoint("tatooine", "Badge:Sarlacc Pit", "", -6176, -3372, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "7") then
					PlayerObject(pGhost):addWaypoint("tatooine", "Badge:Tusken Pool", "", -3971, 6267, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
         end
      end
   end
end

   return nextConversationScreen

end


function tatooine_poi_waypoints_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

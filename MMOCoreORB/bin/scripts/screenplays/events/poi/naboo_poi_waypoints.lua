local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

naboo_poi_waypoints = ScreenPlay:new {
   numberOfActs = 1,
   questString = "naboo_poi_waypoints_task",
   states = {},
}

registerScreenPlay("naboo_poi_waypoints", true)

function naboo_poi_waypoints:start()
   local pMerchant = spawnMobile("naboo", "naboo_poi_waypoints", 1, -4989.17, 6, 4067.54, 289, 0)
   local pMerchant = spawnMobile("naboo", "naboo_poi_waypoints", 1, -5426.2, 6, 4320.31, 31, 0)
   local pMerchant = spawnMobile("naboo", "naboo_poi_waypoints", 1, -4878.43, 6, 4143.46, 24, 0)
   local pMerchant = spawnMobile("naboo", "naboo_poi_waypoints", 1, 5334.53, 326.939, -1592.48, 295, 0)
   local pMerchant = spawnMobile("naboo", "naboo_poi_waypoints", 1, 5115.11, -192, 6603.95, 17, 0)
   local pMerchant = spawnMobile("naboo", "naboo_poi_waypoints", 1, 5195.1, -192, 6679.87, 55, 0)
   local pMerchant = spawnMobile("naboo", "naboo_poi_waypoints", 1, 2023.93, 19, 2510.68, 326, 0)
   local pMerchant = spawnMobile("naboo", "naboo_poi_waypoints", 1, 1554.48, 25, 2840.87, 123, 0)
   local pMerchant = spawnMobile("naboo", "naboo_poi_waypoints", 1, 1445.97, 13, 2774.25, 266, 0)
   local pMerchant = spawnMobile("naboo", "naboo_poi_waypoints", 1, 4823.51, 4.17, -4706.77, 242, 0)
   local pMerchant = spawnMobile("naboo", "naboo_poi_waypoints", 1, -5491.47, -150, -34.3455, 340, 0)
   local pMerchant = spawnMobile("naboo", "naboo_poi_waypoints", 1, -5858.84, 6, 4185.98, 105, 0)

end

naboo_poi_waypoints_convo_handler = Object:new {
   tstring = "conversation_naboo_poi_waypoints"
 }

function naboo_poi_waypoints_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
					PlayerObject(pGhost):addWaypoint("naboo", "Badge:Amidalas Sandy Beach", "", -5828, -93, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "2") then
					PlayerObject(pGhost):addWaypoint("naboo", "Badge:Deeja Falls Top", "", 5161, -1627, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "3") then
					PlayerObject(pGhost):addWaypoint("naboo", "Badge:Gungan Sacred Place", "", -2000, -5429, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "4") then
					PlayerObject(pGhost):addWaypoint("naboo", "Badge:Theed Falls Bottom", "", -4614, 4261, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
         end
      end
   end
end

   return nextConversationScreen

end


function naboo_poi_waypoints_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

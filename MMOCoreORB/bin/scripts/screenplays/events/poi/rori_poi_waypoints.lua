local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

rori_poi_waypoints = ScreenPlay:new {
   numberOfActs = 1,
   questString = "rori_poi_waypoints_task",
   states = {},
}

registerScreenPlay("rori_poi_waypoints", true)

function rori_poi_waypoints:start()
   local pMerchant = spawnMobile("rori", "rori_poi_waypoints", 1, 5369.25, 80, 5667.35, 239, 0)
   local pMerchant = spawnMobile("rori", "rori_poi_waypoints", 1, 3671.68, 96, -6442.05, 301, 0)
   local pMerchant = spawnMobile("rori", "rori_poi_waypoints", 1, -5305.61, 80.1613, -2216.46, 162, 0)
   local pMerchant = spawnMobile("rori", "rori_poi_waypoints", 1, -5305.61, 80.1613, -2216.46, 162, 0)
   local pMerchant = spawnMobile("rori", "rori_poi_waypoints", 1, -5245.64, 80.6314, -2169.04, 323, 0)
end

rori_poi_waypoints_convo_handler = Object:new {
   tstring = "conversation_rori_poi_waypoints"
 }

function rori_poi_waypoints_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
					PlayerObject(pGhost):addWaypoint("rori", "Badge:Imp Camp", "", -5633, -5661, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "2") then
					PlayerObject(pGhost):addWaypoint("rori", "Badge:Imp Hyperdrive Fac", "", -1130, 4544, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "3") then
					PlayerObject(pGhost):addWaypoint("rori", "Badge:Kobala Spice Mine", "", 7304, 63, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "4") then
					PlayerObject(pGhost):addWaypoint("rori", "Badge:Rebel Outpost", "", 3664, -6501, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
         end
      end
   end
end

   return nextConversationScreen

end


function rori_poi_waypoints_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

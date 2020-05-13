local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

dantooine_poi_waypoints = ScreenPlay:new {
   numberOfActs = 1,
   questString = "dantooine_poi_waypoints_task",
   states = {},
}

registerScreenPlay("dantooine_poi_waypoints", true)

function dantooine_poi_waypoints:start()
   local pMerchant = spawnMobile("dantooine", "dantooine_poi_waypoints", 1, 1587.82, 4, -6369.34, 167, 0)
   local pMerchant = spawnMobile("dantooine", "dantooine_poi_waypoints", 1, -4225.13, 3, -2357.29, 169, 0)
   local pMerchant = spawnMobile("dantooine", "dantooine_poi_waypoints", 1, -629.056, 3, 2479.54, 221, 0)

end

dantooine_poi_waypoints_convo_handler = Object:new {
   tstring = "conversation_dantooine_poi_waypoints"
 }

function dantooine_poi_waypoints_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
					PlayerObject(pGhost):addWaypoint("dantooine", "Badge:Dantari Village 1", "", -3929, -5632, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "2") then
					PlayerObject(pGhost):addWaypoint("dantooine", "Badge:Dantari Village 2", "", -7185, -883, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "3") then
					PlayerObject(pGhost):addWaypoint("dantooine", "Badge:Jedi Temple", "", 4195, 5203, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "4") then
					PlayerObject(pGhost):addWaypoint("dantooine", "Badge:Rebel Base", "", -6836, 5520, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
         end
      end
   end
end

   return nextConversationScreen

end


function dantooine_poi_waypoints_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

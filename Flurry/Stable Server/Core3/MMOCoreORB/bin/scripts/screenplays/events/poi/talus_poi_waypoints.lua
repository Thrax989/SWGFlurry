local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

talus_poi_waypoints = ScreenPlay:new {
   numberOfActs = 1,
   questString = "talus_poi_waypoints_task",
   states = {},
}

registerScreenPlay("talus_poi_waypoints", true)

function talus_poi_waypoints:start()
   local pMerchant = spawnMobile("talus", "talus_poi_waypoints", 1, -2222.36, 20, 2302.11, 43, 0)
   local pMerchant = spawnMobile("talus", "talus_poi_waypoints", 1, 4331.15, 9.9, 5420.37, 57, 0)
   local pMerchant = spawnMobile("talus", "talus_poi_waypoints", 1, 329.384, 6, -2926.11, 124, 0)
   local pMerchant = spawnMobile("talus", "talus_poi_waypoints", 1, 713.83, 6, -3044.31, 295, 0)

end

talus_poi_waypoints_convo_handler = Object:new {
   tstring = "conversation_talus_poi_waypoints"
 }

function talus_poi_waypoints_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
					PlayerObject(pGhost):addWaypoint("talus", "Badge:Agrilat Swap", "", -4425, -1414, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "2") then
					PlayerObject(pGhost):addWaypoint("talus", "Badge:Creature Village", "", 4300, 1020, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "3") then
					PlayerObject(pGhost):addWaypoint("talus", "Badge:Imp Base", "", -2185, 2383, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "4") then
					PlayerObject(pGhost):addWaypoint("talus", "Badge:Imp Vs Reb Battle", "", -2595, 3724, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
         end
      end
   end
end

   return nextConversationScreen

end


function talus_poi_waypoints_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

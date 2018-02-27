local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

corellia_poi_waypoints = ScreenPlay:new {
   numberOfActs = 1,
   questString = "corellia_poi_waypoints_task",
   states = {},
}

registerScreenPlay("corellia_poi_waypoints", true)

function corellia_poi_waypoints:start()	
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, 6931.36, 330, -5548.07, 327, 0)
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, -311.803, 28, -4642.33, 312, 0)
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, 3084.33, 280, 4986.19, 352, 0)
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, 3328.35, 308, 5517.86, 25, 0)
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, 6641.71, 330, -5933.11, 13, 0)
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, -133.528, 28, -4713.08, 270, 0)
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, -35.4193, 28, -4406.72, 104, 0)
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, -5565.18, 15.5067, -6058.59, 98, 0)
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, -3787.08, 86, 3236.63, 103, 0)
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, -3129.85, 31, 2809.34, 167, 0)
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, -5014.32, 21, -2383.93, 106, 0)
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, -5603.04, 21, -2799.83, 68, 0)
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, -5051.34, 21, -2304.05, 13, 0)
end

corellia_poi_waypoints_convo_handler = Object:new {
   tstring = "conversation_corellia_poi_waypoints"
 }

function corellia_poi_waypoints_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
					PlayerObject(pGhost):addWaypoint("corellia", "Badge:Agrilat Swap", "", 1387, 3749, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "2") then
					PlayerObject(pGhost):addWaypoint("corellia", "Badge:Bela Vistal Fountain", "", 6767, -5617, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "3") then
					PlayerObject(pGhost):addWaypoint("corellia", "Badge:Rebel Hideout", "", -6530, 5967, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "4") then
					PlayerObject(pGhost):addWaypoint("corellia", "Badge:Rogue Corsec Base", "", 5291, 1494, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "5") then
					PlayerObject(pGhost):addWaypoint("corellia", "Badge:Tyrena Theater", "", -5418, -6248, WAYPOINTBLUE, true, true, 0)
					nextConversationScreen = conversation:getScreen("end")
					LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
         end
      end
   end
end

   return nextConversationScreen

end


function corellia_poi_waypoints_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

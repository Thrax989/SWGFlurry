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
   local pMerchant = spawnMobile("corellia", "corellia_poi_waypoints", 1, -151.828, 28, -4715.77, 86, 0)

end

corellia_poi_waypoints_convo_handler = Object:new {
   tstring = "conversation_corellia_poi_waypoints"
 }

function corellia_poi_waypoints_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
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
				local ret = 0 
				if (optionLink == "1") then
					ret = creature:setAppearance("object/mobile/shared_jawa.iff")
					ret = creature:addWaypoint("corellia", "Badge:Agrilat Swap", "", 1387, 3749, WAYPOINTBLUE, true, true, 0)
					ret = nextConversationScreen = conversation:getScreen("end")
					ret = LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "2") then
					ret = creature:addWaypoint("corellia", "Badge:Bela Vistal Fountain", "", 6767, -5617, WAYPOINTBLUE, true, true, 0)
					ret = nextConversationScreen = conversation:getScreen("end")
					ret = LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "3") then
					ret = creature:addWaypoint("corellia", "Badge:Rebel Hideout", "", -6530, 5967, WAYPOINTBLUE, true, true, 0)
					ret = nextConversationScreen = conversation:getScreen("end")
					ret = LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "4") then
					ret = creature:addWaypoint("corellia", "Badge:Rogue Corsec Base", "", 5291, 1494, WAYPOINTBLUE, true, true, 0)
					ret = nextConversationScreen = conversation:getScreen("end")
					ret = creature:sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "5") then
					ret = creature:addWaypoint("corellia", "Badge:Tyrena Theater", "", -5418, -6248, WAYPOINTBLUE, true, true, 0)
					ret = nextConversationScreen = conversation:getScreen("end")
					ret = creature:sendSystemMessage("The Waypoint has been added to your datpad.")
	  --[[   elseif (optionLink == "6") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "7") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "8") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "9") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "10") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "11") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "12") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "13") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "14") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "15") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "16") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "17") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "18") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
		   elseif (optionLink == "19") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
		   elseif (optionLink == "20") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
		   elseif (optionLink == "21") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
		   elseif (optionLink == "22") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
		   elseif (optionLink == "23") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")
	     elseif (optionLink == "24") then
       PlayerObject(pGhost):addWaypoint("corellia", "Corellia Test", "", -140, -4715, WAYPOINTBLUE, true, true, 0)
       LuaCreatureObject(conversingPlayer):sendSystemMessage("The Waypoint has been added to your datpad.")]]--
      end
   end
end

   return nextConversationScreen

end


function corellia_poi_waypoints_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   return conversationScreen
end

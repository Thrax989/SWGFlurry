-- BY: Mindsoft											-- last edited: 2.27.2017	-- (this code belongs soley to BloodfinEMU)
-----------------------------------------------(SCREENPLAY)
service_npc_demo = ScreenPlay:new {numberOfActs = 1}
registerScreenPlay("service_npc_demo", false)

--Spawn NPC.
function service_npc_demo:start()
	--spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
	spawnMobile("mustafar", "service_npc_demo",1, 352, 225, -1354, 90, 0 )
end

--[notes]

	--[[
		(Place all notes in this section)
	example: OptionLinkName- prints message to terminal

	--]]

--npc convo handler
-----------------------------------------------(NEXT CONVO HANDLER)
service_npc_demo_convo_handler = Object:new {
}
function service_npc_demo_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	return bf_tools_convo_handler:generic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
end

-----------------------------------------------(SCREEN HANDLER)
function service_npc_demo_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local quest = {
-- necessary values: --DO NOT adjust this section
	["player"] =  conversingPlayer,--store player id
	["creature"] = LuaCreatureObject(conversingPlayer),--store player creature object table
	["npc"] = LuaCreatureObject(conversingNPC), --store npc creature object table

-- Editable values: --Adjust this section
	--["screen_Name"] = function(table) [what to do when this screen is displayed goes here], end
	["location_one"] = function(table) bf_tools:addWaypoint(table.player,"mustafar", "Talrus Valley", "", 1130, 69, WAYPOINTWHITE, true) end,
	["location_two"] = function(table) bf_tools:addWaypoint(table.player,"mustafar", "Northern Plains", "", -283, 2398, WAYPOINTWHITE, true) end,
	["location_three"] = function(table) bf_tools:addWaypoint(table.player,"mustafar", "Great Crater", "", 1949, -1965, WAYPOINTWHITE, true) end,

	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest )
end

--[special functions] custom functions for this screenplay

-- (this code belongs soley to BloodfinEMU)

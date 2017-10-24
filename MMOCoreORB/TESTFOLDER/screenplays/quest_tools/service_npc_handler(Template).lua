-- BY: Mindsoft											-- last edited: 2.27.2017	-- (this code belongs soley to BloodfinEMU)
-----------------------------------------------(SCREENPLAY)
screenPlayName = ScreenPlay:new {numberOfActs = 1}
registerScreenPlay("bf_tools_screenPlayName", true)

--Spawn Quest givers and triggers.
function screenPlayName:start()
		--[Mobiles]
	--spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )

		--[effects]
end

--[notes]

	--[[
		(Place all notes in this section)
	example: OptionLinkName- prints message to terminal

	--]]

--npc convo handler
-----------------------------------------------(NEXT CONVO HANDLER)
screenPlayName_convo_handler = Object:new {
}
function screenPlayName_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
		--Generic handler is used for processing simple conversations with no quest states
	return bf_tools_convo_handler:generic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
end

-----------------------------------------------(SCREEN HANDLER)
function screenPlayName_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local quest = {
-- necessary values:
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["npc"] = LuaCreatureObject(conversingNPC),

-- Editable values:
	--["screen_Name"] = function(table) [what to do when this screen is displayed goes here], end
	["OptionLinkName"] = function(quest) print("add trapped option links & code here") end
	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest )
end

--[special functions] custom functions for this screenplay

-- (this code belongs soley to BloodfinEMU)

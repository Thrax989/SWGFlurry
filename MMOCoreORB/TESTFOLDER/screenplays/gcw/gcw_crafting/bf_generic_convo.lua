-- BY: Mindsoft											-- last edited: 9.05.2016	-- (this code belongs soley to BloodfinEMU)

bf_generic_convo_handler = Object:new {}
-----------------------------------------------(NEXT CONVO HANDLER)

function bf_generic_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	return bf_tools_convo_handler:generic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
end

-----------------------------------------------(SCREEN HANDLER)
function bf_generic_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)

	local quest = {
-- necessary values:
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["questString"] = "bf_generic_convo_handler",
	["npc"] = conversingNPC,
-- Editable values:
	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest)
end


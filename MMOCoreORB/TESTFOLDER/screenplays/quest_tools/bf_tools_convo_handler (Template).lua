-- BY: Mindsoft											-- last edited: 2.24.2013	-- (this code belongs soley to BloodfinEMU)
-----------------------------------------------(SCREENPLAY)
bf_tools_screenPlayName = ScreenPlay:new {numberOfActs = 1}
registerScreenPlay("bf_tools_screenPlayName", true)

--Spawn Quest givers and triggers.
function bf_tools_screenPlayName:start()
		--[Mobiles]
	--spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )

		--[Scene Objects]
	--spawnSceneObject(<planet>, <objecttemplatefile>, x, z, y, <cell>, dw, dx, dy, dz> setting dw , dx , dy and dz

		--[buildings]

		--[effects]
end


--[observers] Place quest specific observer events here


--[notes]

	--[[
		(Place all notes in this section)
	example: OptionLinkName- prints message to terminal

	--]]


--[Handlers] All npc convo handlers for the quest go here, make sure to label each npc with comment.
--npc one convo handler
-----------------------------------------------(NEXT CONVO HANDLER)
bf_tools_screenPlayName_convo_handler = Object:new {
	questString = "Add_Unique_questString_Here" --This MUST BE a unique name targetting this questline specifically
}
function bf_tools_screenPlayName_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

		--Generic handler is used for processing simple conversations with no quest states
	--return bf_tools_convo_handler:generic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

		--Dynamic handler is for much more complex convos involving quest states
	--return bf_tools_convo_handler:dynamic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption, triggerTable, questString)
end

-----------------------------------------------(SCREEN HANDLER)
function bf_tools_screenPlayName_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local quest = {
-- necessary values:
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["questString"] = self.questString,
	["npc"] = LuaCreatureObject(conversingNPC),

-- Editable values:
	["OptionLinkName"] = function(quest) print("add trapped option links & code here") end
	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest )
end

--[special functions] custom functions for this screenplay

-- (this code belongs soley to BloodfinEMU)

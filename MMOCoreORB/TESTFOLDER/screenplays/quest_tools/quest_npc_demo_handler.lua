-- BY: Mindsoft											-- last edited: 2.24.2017	-- (this code belongs soley to BloodfinEMU)
-----------------------------------------------(SCREENPLAY)
quest_npc_demo = ScreenPlay:new {numberOfActs = 1}
registerScreenPlay("quest_npc_demo", false)

--Spawn Quest givers and triggers.
function quest_npc_demo:start()
		--[Mobiles]
	--spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
	spawnMobile("mustafar", "quest_npc_demo",1, 352, 225, -1360, 90, 0 )
	spawnMobile("mustafar", "convo_npc_demo",1, 352, 225, -1357, 90, 0 )

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
quest_npc_demo_convo_handler = Object:new {
	questString = "Add_Unique_questString_Here" --This MUST BE a unique name targetting this questline specifically
}
function quest_npc_demo_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	local questString = self.questString
	local triggerTable = {
		[1] = "quest_one_incomplete", --player has started the first quest (speak with npc agian)
		[2] = "quest_one_complete", --player has completed the first quest
		[3] = "quest_two_incomplete", --player has started the second quest (kill 5 creatures)
		[8] = "quest_two_complete", --player has completed the second quest ,Note:trigger advanced by 5, one for each kill
		[9] = "complete", --player has finished the quest line
	} 
	print("sending to bf tools dynamic getnextscreen")
		--Dynamic handler is for much more complex convos involving quest states
	return bf_tools_convo_handler:dynamic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption, triggerTable, questString)
end

-----------------------------------------------(SCREEN HANDLER)
function quest_npc_demo_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local quest = {
-- necessary values: --DO NOT adjust this section
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["questString"] = self.questString,
	["npc"] = LuaCreatureObject(conversingNPC),

-- Editable values: --Adjust this section
	--["screen_Name"] = function(table) [what to do when this screen is displayed goes here], end
	["start"] = function(table)bf_tools:resetQuest(table.creature, table.questString,1) end,
	["quest_one_complete"] = function(table)bf_tools:resetQuest(table.creature, table.questString,2) end,
	["quest_two_started"] = function(table)bf_tools:resetQuest(table.creature, table.questString,3) end,
	["mock_kill"] = function(table)bf_tools:statePlus( table.creature,table.questString ) end,
	["reset"] = function(table)bf_tools:resetQuest(table.creature, table.questString) end,
	["reward"] = function(table)bf_tools:reward( table.player, "credits", 5);print("\nrewarded player \n")
		bf_tools:resetQuest(table.creature, table.questString,9) end, --reward player 5 credits

	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest )
end

--[special functions] custom functions for this screenplay


-- (this code belongs soley to BloodfinEMU)

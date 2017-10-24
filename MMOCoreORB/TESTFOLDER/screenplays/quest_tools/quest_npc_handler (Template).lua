-- BY: Mindsoft											-- last edited: 2.27.2017	-- (this code belongs soley to BloodfinEMU)
-----------------------------------------------(SCREENPLAY)
screenPlayName = ScreenPlay:new {numberOfActs = 1}
registerScreenPlay("screenPlayName", true)

--Spawn Quest givers and triggers.
function screenPlayName:start()
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
	example: This screenplay is a template element for streamline production

	--]]


--[Handlers] All npc convo handlers for the quest go here, make sure to label each npc with comment.
--npc one convo handler
-----------------------------------------------(NEXT CONVO HANDLER)
screenPlayName_convo_handler = Object:new {
	questString = "Add_Unique_questString_Here" --This MUST BE a unique name targetting this questline specifically
}
function screenPlayName_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	local questString = self.questString
	local triggerTable = { --creates table of triggers to be tested for at convo start
		[1] = "screen_name", -- if screenPlayState = [1] then first convo screen show to player is "screen_name"
		[2] = "next_screen_name", -- if screenPlayState = [2] then first convo screen show to player is "next_screen_name"
		[255] = "final_screen_name", -- if screenPlayState = [255] then first convo screen show to player is "final_screen_name"
	} 
		--Dynamic handler is for much more complex convos involving quest states
	return bf_tools_convo_handler:dynamic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption, triggerTable, questString)
end

-----------------------------------------------(SCREEN HANDLER)
function screenPlayName_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local quest = {
-- necessary values: --DO NOT adjust this section
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["questString"] = self.questString,
	["npc"] = LuaCreatureObject(conversingNPC),

-- Editable values: --Adjust this section
	--this section traps displayed screens and runs the function tied to it.
	--["screen_Name"] = function(table) [what to do when this screen is displayed goes here], end

					--bf_tools:resetQuest( creatureObject, questString, setTo) *note: used to set screenplay states
	["start"] = function(table)bf_tools:resetQuest(table.creature, table.questString,1) end,--if screen start then set quest to state 1
	["finish"] = function(table)bf_tools:resetQuest(table.creature, table.questString,255) end,--if screen finish then set quest to state 255 (max)

					--bf_tools:item_Purchase( pPlayer, rewardItem, purchaseCost, barterItem ) *note: Used for bartering
	["barter_one"] = function(table)bf_tools:item_Purchase( table.player, "reward.iff", 5, requiredItem.iff ) end,--handle barter sequence

					--bf_tools:reward( pPlayer, reward_type, reward, modifier, test )
					-- Types: rebFaction, impFaction, credits, item, custom *note:(for custom- reward is set to "screenName")
	["reward"] = function(table)bf_tools:reward( table.player, "credits", 5);print("\nrewarded player \n") end, --reward player 5 credits
	["reset"] = function(table)bf_tools:resetQuest(table.creature, table.questString) end,--reset questline *note:omit setTo to wipe the questState
	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest )
end

--[special functions] custom functions for this screenplay


-- (this code belongs soley to BloodfinEMU)

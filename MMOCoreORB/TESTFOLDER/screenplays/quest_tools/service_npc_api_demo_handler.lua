-- BY: Mindsoft							last edited: 3.5.2017
-- 															     (this code belongs soley to BloodfinEMU)
-----------------------------------------------(SCREENPLAY)
service_npc_api_demo = ScreenPlay:new {numberOfActs = 1}
registerScreenPlay("service_npc_api_demo", false)

--Spawn NPC.
function service_npc_api_demo:start()
	--spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
	spawnMobile("mustafar", "service_npc_api_demo",1, 355, 225, -1365, 90, 0 )
end

--[notes]

	--[[
		(Place all notes in this section)
	example: OptionLinkName- prints message to terminal

	--]]

--npc convo handler
--															     (this code belongs soley to BloodfinEMU)
-----------------------------------------------(NEXT CONVO HANDLER)
service_npc_api_demo_convo_handler = Object:new {
}
function service_npc_api_demo_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	return bf_tools_convo_handler:generic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
end

-- 															     (this code belongs soley to BloodfinEMU)
-----------------------------------------------(SCREEN HANDLER)
function service_npc_api_demo_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local quest = {
-- necessary values: --DO NOT adjust this section
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["npc"] = LuaCreatureObject(conversingNPC),

-- Editable values: --Adjust this section

	["item_check"] = function(tbl) --Check if player has the required object.
		if not bf_tools:item_Purchase( tbl.player, "check", 5, "object/tangible/event_perk/halloween_coin.iff" ) then
			return "item_check_failed" --set the next screen displayed to "item_check_failed"
		end end,

	["item_barter"] = function(tbl) --If player has required object/s(5 BF coins) remove it and give desired object(chem storage)
		if not bf_tools:item_Purchase( tbl.player, "object/tangible/dungeon/chemical_storage.iff", 5, "object/tangible/event_perk/halloween_coin.iff" ) then
			return "item_barter_failed"
		end end,

	["item_remove"] = function(tbl) --If player has required amount(5) of coins, remove them.
		if not bf_tools:item_Purchase( tbl.player, nil, 5, "object/tangible/event_perk/halloween_coin.iff" ) then
			return "item_remove_failed"
		end end,

	["item_item"] = function(tbl) --Give player bloodfin coin
		if not bf_tools:reward( tbl.player, "item", "object/tangible/event_perk/halloween_coin.iff", -1, false ) then
			return "inv_full"
		end end,

	["item_loot"] = function(tbl) --Give player a random item from "junk" Loot-Group
		if not bf_tools:reward(tbl.player, "loot", "junk", 0, true ) then
			return "inv_full"
		end end,

	--["item_loot_set"] = function(tbl) end, TODO
	["quest_"] = function(tbl) end,
	["quest_"] = function(tbl) end,
	["quest_"] = function(tbl) end,
	["quest_"] = function(tbl) end,
	["other_credits"] = function(tbl) end,
	["other_reb_faction"] = function(tbl) end,
	["other_imp_faction"] = function(tbl) end,
	}
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest )
end

--[special functions] custom functions for this screenplay

-- (this code belongs soley to BloodfinEMU)										     (this code belongs soley to BloodfinEMU)

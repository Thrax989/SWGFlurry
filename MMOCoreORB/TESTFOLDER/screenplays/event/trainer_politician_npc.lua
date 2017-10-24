-- BY: KALAVUS											-- last edited: 9.7.2016	-- (this code belongs soley to BloodfinEMU)
local ObjectManager = require("managers.object.object_manager")
-----------------------------------------------(SCREENPLAY)
trainer_politician_npc = ScreenPlay:new {numberOfActs = 1}
registerScreenPlay("trainer_politician_npc", true)

--Spawn Quest givers and triggers. - spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
function trainer_politician_npc:start()
	--spawnMobile("planet", "mobile",respawn, x, z, y, dir, cell )
		--Master Politician Trainer Location
	spawnMobile("lok","bf_politician_trainer",1,470.7,3.0,5441.6, -94,0)
		
end
trainer_politician_npc_handler = Object:new {}
-----------------------------------------------(NEXT CONVO HANDLER)

function trainer_politician_npc_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	print("sending nextscreen")
	return bf_tools_convo_handler:generic_getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
end

-----------------------------------------------(SCREEN HANDLER)
function trainer_politician_npc_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)

	local quest = {
-- necessary values:
	["player"] =  conversingPlayer,
	["creature"] = LuaCreatureObject(conversingPlayer),
	["questString"] = "trainer_politician_npc",
	["npc"] = conversingNPC,
-- Editable values: -- NEED THESE VALUES UPDATED FOR POLITICIAN
	["payment"] = function(...) trainer_politician_npc_handler:payTrainer(...) end
	}
	print("sending convo handler")
	return bf_tools_convo_handler:generic_runScreenHandlers( conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, quest)
end

function trainer_politician_npc_handler:payTrainer(quest)
	local pPlayer = quest.player
	if pPlayer == nil then
		return false
	end
	local player = LuaCreatureObject(pPlayer)
	if player:hasSkill("social_politician_novice") and not player:hasSkill("social_politician_master") then
		if player:getBankCredits() > 1000000 then
			ObjectManager.withCreaturePlayerObject(pPlayer, function(playerObject)
				awardSkill(pPlayer, "social_politician_fiscal_01")
				awardSkill(pPlayer, "social_politician_fiscal_02")
				awardSkill(pPlayer, "social_politician_fiscal_03")
				awardSkill(pPlayer, "social_politician_fiscal_04")

				awardSkill(pPlayer, "social_politician_martial_01")
				awardSkill(pPlayer, "social_politician_martial_02")
				awardSkill(pPlayer, "social_politician_martial_03")
				awardSkill(pPlayer, "social_politician_martial_04")

				awardSkill(pPlayer, "social_politician_civic_01")
				awardSkill(pPlayer, "social_politician_civic_02")
				awardSkill(pPlayer, "social_politician_civic_03")
				awardSkill(pPlayer, "social_politician_civic_04")

				awardSkill(pPlayer, "social_politician_urban_01")
				awardSkill(pPlayer, "social_politician_urban_02")
				awardSkill(pPlayer, "social_politician_urban_03")
				awardSkill(pPlayer, "social_politician_urban_04")
			
				awardSkill(pPlayer, "social_politician_master")
			end)
			player:setBankCredits(player:getBankCredits()-1000000)
			player:sendSystemMessage("You have paid 1,000,000 to train Master Politician")

		elseif player:getCashCredits() > 1000000 then
			ObjectManager.withCreaturePlayerObject(pPlayer, function(playerObject)
				awardSkill(pPlayer, "social_politician_fiscal_01")
				awardSkill(pPlayer, "social_politician_fiscal_02")
				awardSkill(pPlayer, "social_politician_fiscal_03")
				awardSkill(pPlayer, "social_politician_fiscal_04")

				awardSkill(pPlayer, "social_politician_martial_01")
				awardSkill(pPlayer, "social_politician_martial_02")
				awardSkill(pPlayer, "social_politician_martial_03")
				awardSkill(pPlayer, "social_politician_martial_04")

				awardSkill(pPlayer, "social_politician_civic_01")
				awardSkill(pPlayer, "social_politician_civic_02")
				awardSkill(pPlayer, "social_politician_civic_03")
				awardSkill(pPlayer, "social_politician_civic_04")

				awardSkill(pPlayer, "social_politician_urban_01")
				awardSkill(pPlayer, "social_politician_urban_02")
				awardSkill(pPlayer, "social_politician_urban_03")
				awardSkill(pPlayer, "social_politician_urban_04")
			
				awardSkill(pPlayer, "social_politician_master")
			end)
			player:subtractCashCredits(1000000)
			player:sendSystemMessage("You have paid 1,000,000 to train Master Politician")
			
		else
			player:sendSystemMessage("@dispenser:insufficient_funds")
			return false
		end
	
	else
		player:sendSystemMessage("Must Have Novice Politician")
		return false
	end
	return true
end



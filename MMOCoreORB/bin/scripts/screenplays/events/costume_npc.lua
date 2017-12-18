costume_npc = ScreenPlay:new {
	numberOfActs = 1,
	questString = "costume_npc",
	states = {}, 
}

registerScreenPlay("costume_npc", true)
local ObjectManager = require("managers.object.object_manager")

function costume_npc:start()
	if (isZoneEnabled("corellia")) and (isZoneEnabled("tatooine")) and (isZoneEnabled("naboo")) then
		--self:spawnStructures()
		self:spawnMobile()
	end
end

function costume_npc:spawnStructures()
end

function costume_npc:spawnMobile()
	spawnMobile("naboo", "costume_npc", 600, -4857, 6, 4125, 250, 0)
end


------------------------------------------- convohandler --------------------------------------------
costume_convo_handler = Object:new {

	tstring = "costume_convo_handler"
}
local screenplayHelper = require("screenplayHelper")

function costume_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
			if (screenID == "select_costume") then
				local ret = 0 
				if (optionLink == "costume_jawa") then
					ret = creature:setAppearance("object/mobile/shared_jawa.iff")
				elseif (optionLink == "costume_morag") then
					ret = creature:setAppearance("object/mobile/shared_morag.iff")
				elseif (optionLink == "costume_borvo") then
					ret = creature:setAppearance("object/mobile/shared_borvo.iff")
				elseif (optionLink == "costume_gamorrean") then
					ret = creature:setAppearance("object/mobile/shared_gamorrean.iff") 
				elseif (optionLink == "costume_nightsister") then
					ret = creature:setAppearance("object/mobile/shared_muftak.iff") 
				elseif (optionLink == "costume_maxreboo") then
					ret = creature:setAppearance("object/mobile/shared_max_rebo.iff") 
				elseif (optionLink == "costume_royalguard") then
					ret = creature:setAppearance("object/mobile/shared_royal_guard.iff")
				elseif (optionLink == "costume_tusken") then
					ret = creature:setAppearance("object/mobile/shared_tusken_raider.iff")
				elseif (optionLink == "costume_obiwan") then
					ret = creature:setAppearance("object/mobile/shared_obi_wan_ghost_static.iff")
				elseif (optionLink == "costume_boba") then
					ret = creature:setAppearance("object/mobile/shared_boba_fett.iff")
				elseif (optionLink == "costume_muftak") then
					ret = creature:setAppearance("object/mobile/shared_muftak.iff")
				elseif (optionLink == "costume_santa") then
					ret = creature:setAppearance("object/mobile/shared_lifeday_saun_dann.iff")
				elseif (optionLink == "costume_wichtel") then
					ret = creature:setAppearance("object/mobile/shared_lifeday_monkey_lizard.iff")
				end
			end
		end
	end
	return nextConversationScreen
end



function costume_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return conversationScreen
end